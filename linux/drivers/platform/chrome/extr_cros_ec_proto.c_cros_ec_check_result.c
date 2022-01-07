
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int dev; } ;
struct cros_ec_command {int result; int command; } ;


 int EAGAIN ;


 int dev_dbg (int ,char*,int ,...) ;

int cros_ec_check_result(struct cros_ec_device *ec_dev,
    struct cros_ec_command *msg)
{
 switch (msg->result) {
 case 128:
  return 0;
 case 129:
  dev_dbg(ec_dev->dev, "command 0x%02x in progress\n",
   msg->command);
  return -EAGAIN;
 default:
  dev_dbg(ec_dev->dev, "command 0x%02x returned %d\n",
   msg->command, msg->result);
  return 0;
 }
}
