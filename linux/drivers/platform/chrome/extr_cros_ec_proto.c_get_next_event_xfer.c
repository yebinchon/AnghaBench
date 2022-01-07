
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cros_ec_device {int event_size; int event_data; } ;
struct cros_ec_command {int version; int data; scalar_t__ outsize; int insize; int command; } ;


 int EC_CMD_GET_NEXT_EVENT ;
 int cros_ec_cmd_xfer (struct cros_ec_device*,struct cros_ec_command*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int get_next_event_xfer(struct cros_ec_device *ec_dev,
          struct cros_ec_command *msg,
          int version, uint32_t size)
{
 int ret;

 msg->version = version;
 msg->command = EC_CMD_GET_NEXT_EVENT;
 msg->insize = size;
 msg->outsize = 0;

 ret = cros_ec_cmd_xfer(ec_dev, msg);
 if (ret > 0) {
  ec_dev->event_size = ret - 1;
  memcpy(&ec_dev->event_data, msg->data, ret);
 }

 return ret;
}
