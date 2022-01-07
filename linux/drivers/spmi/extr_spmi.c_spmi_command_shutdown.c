
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int usid; int ctrl; } ;


 int SPMI_CMD_SHUTDOWN ;
 int spmi_cmd (int ,int ,int ) ;

int spmi_command_shutdown(struct spmi_device *sdev)
{
 return spmi_cmd(sdev->ctrl, SPMI_CMD_SHUTDOWN, sdev->usid);
}
