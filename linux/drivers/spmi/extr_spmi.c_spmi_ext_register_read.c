
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_device {int usid; int ctrl; } ;


 int EINVAL ;
 int SPMI_CMD_EXT_READ ;
 int spmi_read_cmd (int ,int ,int ,int ,int *,size_t) ;

int spmi_ext_register_read(struct spmi_device *sdev, u8 addr, u8 *buf,
      size_t len)
{

 if (len == 0 || len > 16)
  return -EINVAL;

 return spmi_read_cmd(sdev->ctrl, SPMI_CMD_EXT_READ, sdev->usid, addr,
        buf, len);
}
