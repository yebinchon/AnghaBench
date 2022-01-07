
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_channel {int refcount; int open_ack; } ;


 int ETIMEDOUT ;
 int HZ ;
 int kref_put (int *,int ) ;
 int qcom_glink_channel_release ;
 int qcom_glink_send_close_req (struct qcom_glink*,struct glink_channel*) ;
 int qcom_glink_send_open_ack (struct qcom_glink*,struct glink_channel*) ;
 int qcom_glink_send_open_req (struct qcom_glink*,struct glink_channel*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int qcom_glink_create_remote(struct qcom_glink *glink,
        struct glink_channel *channel)
{
 int ret;

 qcom_glink_send_open_ack(glink, channel);

 ret = qcom_glink_send_open_req(glink, channel);
 if (ret)
  goto close_link;

 ret = wait_for_completion_timeout(&channel->open_ack, 5 * HZ);
 if (!ret) {
  ret = -ETIMEDOUT;
  goto close_link;
 }

 return 0;

close_link:




 qcom_glink_send_close_req(glink, channel);


 kref_put(&channel->refcount, qcom_glink_channel_release);

 return ret;
}
