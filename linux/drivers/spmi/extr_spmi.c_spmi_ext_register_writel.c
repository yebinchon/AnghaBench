
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spmi_device {int usid; int ctrl; } ;


 int EINVAL ;
 int SPMI_CMD_EXT_WRITEL ;
 int spmi_write_cmd (int ,int ,int ,int ,int const*,size_t) ;

int spmi_ext_register_writel(struct spmi_device *sdev, u16 addr, const u8 *buf,
        size_t len)
{

 if (len == 0 || len > 8)
  return -EINVAL;

 return spmi_write_cmd(sdev->ctrl, SPMI_CMD_EXT_WRITEL, sdev->usid,
         addr, buf, len);
}
