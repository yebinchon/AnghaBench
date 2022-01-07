
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcnss_msg_hdr {int len; int type; } ;
struct wcnss_ctrl {int dev; int ack; int channel; } ;
typedef int msg ;


 int ETIMEDOUT ;
 int WCNSS_CBC_TIMEOUT ;
 int WCNSS_VERSION_REQ ;
 int dev_err (int ,char*) ;
 int rpmsg_send (int ,struct wcnss_msg_hdr*,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wcnss_request_version(struct wcnss_ctrl *wcnss)
{
 struct wcnss_msg_hdr msg;
 int ret;

 msg.type = WCNSS_VERSION_REQ;
 msg.len = sizeof(msg);
 ret = rpmsg_send(wcnss->channel, &msg, sizeof(msg));
 if (ret < 0)
  return ret;

 ret = wait_for_completion_timeout(&wcnss->ack, WCNSS_CBC_TIMEOUT);
 if (!ret) {
  dev_err(wcnss->dev, "timeout waiting for version response\n");
  return -ETIMEDOUT;
 }

 return 0;
}
