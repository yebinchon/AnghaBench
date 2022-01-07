
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ufs_hba {int dummy; } ;
typedef enum query_opcode { ____Placeholder_query_opcode } query_opcode ;
typedef enum desc_idn { ____Placeholder_desc_idn } desc_idn ;


 int EINVAL ;
 int QUERY_REQ_RETRIES ;
 int __ufshcd_query_descriptor (struct ufs_hba*,int,int,int ,int ,int *,int*) ;

int ufshcd_query_descriptor_retry(struct ufs_hba *hba,
      enum query_opcode opcode,
      enum desc_idn idn, u8 index,
      u8 selector,
      u8 *desc_buf, int *buf_len)
{
 int err;
 int retries;

 for (retries = QUERY_REQ_RETRIES; retries > 0; retries--) {
  err = __ufshcd_query_descriptor(hba, opcode, idn, index,
      selector, desc_buf, buf_len);
  if (!err || err == -EINVAL)
   break;
 }

 return err;
}
