
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_device {int usid; int ctrl; } ;


 int SPMI_CMD_ZERO_WRITE ;
 int spmi_write_cmd (int ,int ,int ,int ,int *,int) ;

int spmi_register_zero_write(struct spmi_device *sdev, u8 data)
{
 return spmi_write_cmd(sdev->ctrl, SPMI_CMD_ZERO_WRITE, sdev->usid, 0,
         &data, 1);
}
