
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmsg_device {int dev; } ;
struct glink_ssr {scalar_t__ seq_num; int completion; int dev; } ;
struct cleanup_done_msg {int seq_num; int response; int version; } ;


 int EINVAL ;
 scalar_t__ GLINK_SSR_CLEANUP_DONE ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 struct glink_ssr* dev_get_drvdata (int *) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int qcom_glink_ssr_callback(struct rpmsg_device *rpdev,
       void *data, int len, void *priv, u32 addr)
{
 struct cleanup_done_msg *msg = data;
 struct glink_ssr *ssr = dev_get_drvdata(&rpdev->dev);

 if (len < sizeof(*msg)) {
  dev_err(ssr->dev, "message too short\n");
  return -EINVAL;
 }

 if (le32_to_cpu(msg->version) != 0)
  return -EINVAL;

 if (le32_to_cpu(msg->response) != GLINK_SSR_CLEANUP_DONE)
  return 0;

 if (le32_to_cpu(msg->seq_num) != ssr->seq_num) {
  dev_err(ssr->dev, "invalid sequence number of response\n");
  return -EINVAL;
 }

 complete(&ssr->completion);

 return 0;
}
