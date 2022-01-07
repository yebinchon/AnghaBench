
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ufs_hba {int dummy; } ;
typedef int ssize_t ;
typedef enum desc_idn { ____Placeholder_desc_idn } desc_idn ;


 int EINVAL ;
 int get_unaligned_be16 (int*) ;
 int get_unaligned_be32 (int*) ;
 int get_unaligned_be64 (int*) ;
 int sprintf (int*,char*,int) ;
 int ufshcd_read_desc_param (struct ufs_hba*,int,int,int,int*,int) ;

__attribute__((used)) static ssize_t ufs_sysfs_read_desc_param(struct ufs_hba *hba,
      enum desc_idn desc_id,
      u8 desc_index,
      u8 param_offset,
      u8 *sysfs_buf,
      u8 param_size)
{
 u8 desc_buf[8] = {0};
 int ret;

 if (param_size > 8)
  return -EINVAL;

 ret = ufshcd_read_desc_param(hba, desc_id, desc_index,
    param_offset, desc_buf, param_size);
 if (ret)
  return -EINVAL;
 switch (param_size) {
 case 1:
  ret = sprintf(sysfs_buf, "0x%02X\n", *desc_buf);
  break;
 case 2:
  ret = sprintf(sysfs_buf, "0x%04X\n",
   get_unaligned_be16(desc_buf));
  break;
 case 4:
  ret = sprintf(sysfs_buf, "0x%08X\n",
   get_unaligned_be32(desc_buf));
  break;
 case 8:
  ret = sprintf(sysfs_buf, "0x%016llX\n",
   get_unaligned_be64(desc_buf));
  break;
 }

 return ret;
}
