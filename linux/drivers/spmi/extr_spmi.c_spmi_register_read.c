
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_device {int usid; int ctrl; } ;


 int EINVAL ;
 int SPMI_CMD_READ ;
 int spmi_read_cmd (int ,int ,int ,int,int*,int) ;

int spmi_register_read(struct spmi_device *sdev, u8 addr, u8 *buf)
{

 if (addr > 0x1F)
  return -EINVAL;

 return spmi_read_cmd(sdev->ctrl, SPMI_CMD_READ, sdev->usid, addr,
        buf, 1);
}
