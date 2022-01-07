
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_data {scalar_t__ ec_buffer; struct cros_ec_dev* ec_dev; } ;
struct ec_response_pd_log {int dummy; } ;
struct cros_ec_dev {int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {scalar_t__ data; int insize; scalar_t__ command; } ;


 int CROS_USBPD_LOG_RESP_SIZE ;
 scalar_t__ EC_CMD_PD_GET_LOG_ENTRY ;
 struct ec_response_pd_log* ERR_PTR (int) ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;

__attribute__((used)) static struct ec_response_pd_log *ec_get_log_entry(struct logger_data *logger)
{
 struct cros_ec_dev *ec_dev = logger->ec_dev;
 struct cros_ec_command *msg;
 int ret;

 msg = (struct cros_ec_command *)logger->ec_buffer;

 msg->command = ec_dev->cmd_offset + EC_CMD_PD_GET_LOG_ENTRY;
 msg->insize = CROS_USBPD_LOG_RESP_SIZE;

 ret = cros_ec_cmd_xfer_status(ec_dev->ec_dev, msg);
 if (ret < 0)
  return ERR_PTR(ret);

 return (struct ec_response_pd_log *)msg->data;
}
