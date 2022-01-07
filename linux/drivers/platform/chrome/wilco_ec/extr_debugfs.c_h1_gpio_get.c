
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wilco_ec_message {int request_size; int response_size; struct hi_gpio_status_response* response_data; struct wilco_ec_message* request_data; int type; int sub_cmd; int cmd; } ;
struct wilco_ec_device {int dummy; } ;
struct hi_gpio_status_response {int val; scalar_t__ status; } ;
struct h1_gpio_status_request {int request_size; int response_size; struct hi_gpio_status_response* response_data; struct h1_gpio_status_request* request_data; int type; int sub_cmd; int cmd; } ;
typedef int rs ;
typedef int rq ;
typedef int msg ;


 int CMD_KB_CHROME ;
 int EIO ;
 int SUB_CMD_H1_GPIO ;
 int WILCO_EC_MSG_LEGACY ;
 int memset (struct wilco_ec_message*,int ,int) ;
 int wilco_ec_mailbox (struct wilco_ec_device*,struct wilco_ec_message*) ;

__attribute__((used)) static int h1_gpio_get(void *arg, u64 *val)
{
 struct wilco_ec_device *ec = arg;
 struct h1_gpio_status_request rq;
 struct hi_gpio_status_response rs;
 struct wilco_ec_message msg;
 int ret;

 memset(&rq, 0, sizeof(rq));
 rq.cmd = CMD_KB_CHROME;
 rq.sub_cmd = SUB_CMD_H1_GPIO;

 memset(&msg, 0, sizeof(msg));
 msg.type = WILCO_EC_MSG_LEGACY;
 msg.request_data = &rq;
 msg.request_size = sizeof(rq);
 msg.response_data = &rs;
 msg.response_size = sizeof(rs);
 ret = wilco_ec_mailbox(ec, &msg);
 if (ret < 0)
  return ret;
 if (rs.status)
  return -EIO;

 *val = rs.val;

 return 0;
}
