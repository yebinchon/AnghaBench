
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct ufs_hba {int dev; } ;
struct uc_string_id {int len; int uc; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QUERY_DESC_HDR_SIZE ;
 int QUERY_DESC_IDN_STRING ;
 int QUERY_DESC_MAX_SIZE ;
 int QUERY_REQ_RETRIES ;
 int UTF16_BIG_ENDIAN ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int ,int) ;
 int kfree (struct uc_string_id*) ;
 char* kmemdup (struct uc_string_id*,int,int ) ;
 void* kzalloc (int,int ) ;
 int ufshcd_read_desc (struct ufs_hba*,int ,char,struct uc_string_id*,int) ;
 char ufshcd_remove_non_printable (char) ;
 int utf16s_to_utf8s (int ,int,int ,char*,int) ;

int ufshcd_read_string_desc(struct ufs_hba *hba, u8 desc_index,
       u8 **buf, bool ascii)
{
 struct uc_string_id *uc_str;
 u8 *str;
 int ret;

 if (!buf)
  return -EINVAL;

 uc_str = kzalloc(QUERY_DESC_MAX_SIZE, GFP_KERNEL);
 if (!uc_str)
  return -ENOMEM;

 ret = ufshcd_read_desc(hba, QUERY_DESC_IDN_STRING,
          desc_index, uc_str,
          QUERY_DESC_MAX_SIZE);
 if (ret < 0) {
  dev_err(hba->dev, "Reading String Desc failed after %d retries. err = %d\n",
   QUERY_REQ_RETRIES, ret);
  str = ((void*)0);
  goto out;
 }

 if (uc_str->len <= QUERY_DESC_HDR_SIZE) {
  dev_dbg(hba->dev, "String Desc is of zero length\n");
  str = ((void*)0);
  ret = 0;
  goto out;
 }

 if (ascii) {
  ssize_t ascii_len;
  int i;

  ascii_len = (uc_str->len - QUERY_DESC_HDR_SIZE) / 2 + 1;
  str = kzalloc(ascii_len, GFP_KERNEL);
  if (!str) {
   ret = -ENOMEM;
   goto out;
  }





  ret = utf16s_to_utf8s(uc_str->uc,
          uc_str->len - QUERY_DESC_HDR_SIZE,
          UTF16_BIG_ENDIAN, str, ascii_len);


  for (i = 0; i < ret; i++)
   str[i] = ufshcd_remove_non_printable(str[i]);

  str[ret++] = '\0';

 } else {
  str = kmemdup(uc_str, uc_str->len, GFP_KERNEL);
  if (!str) {
   ret = -ENOMEM;
   goto out;
  }
  ret = uc_str->len;
 }
out:
 *buf = str;
 kfree(uc_str);
 return ret;
}
