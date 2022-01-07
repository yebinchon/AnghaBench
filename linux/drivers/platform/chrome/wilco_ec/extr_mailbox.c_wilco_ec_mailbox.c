
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_request {int dummy; } ;
struct wilco_ec_message {int request_size; int response_size; int flags; int type; } ;
struct wilco_ec_device {int mailbox_lock; struct wilco_ec_request* data_buffer; int dev; } ;


 int dev_dbg (int ,char*,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wilco_ec_prepare (struct wilco_ec_message*,struct wilco_ec_request*) ;
 int wilco_ec_transfer (struct wilco_ec_device*,struct wilco_ec_message*,struct wilco_ec_request*) ;

int wilco_ec_mailbox(struct wilco_ec_device *ec, struct wilco_ec_message *msg)
{
 struct wilco_ec_request *rq;
 int ret;

 dev_dbg(ec->dev, "type=%04x flags=%02x rslen=%zu rqlen=%zu\n",
  msg->type, msg->flags, msg->response_size, msg->request_size);

 mutex_lock(&ec->mailbox_lock);

 rq = ec->data_buffer;
 wilco_ec_prepare(msg, rq);

 ret = wilco_ec_transfer(ec, msg, rq);
 mutex_unlock(&ec->mailbox_lock);

 return ret;

}
