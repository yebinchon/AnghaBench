
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_endpoint {int refcount; int * ops; void* priv; int cb; struct rpmsg_device* rpdev; } ;
struct rpmsg_device {int dev; } ;
struct rpmsg_channel_info {char* name; } ;
struct qcom_smd_endpoint {struct qcom_smd_channel* qsch; struct rpmsg_endpoint ept; } ;
struct qcom_smd_edge {int new_channel_event; } ;
struct qcom_smd_device {struct qcom_smd_edge* edge; } ;
struct qcom_smd_channel {scalar_t__ state; struct qcom_smd_endpoint* qsept; int name; } ;
typedef int rpmsg_rx_cb_t ;


 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ SMD_CHANNEL_CLOSED ;
 int __ept_release ;
 int dev_err (int *,char*,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct qcom_smd_endpoint* kzalloc (int,int ) ;
 int qcom_smd_channel_open (struct qcom_smd_channel*,int ) ;
 int qcom_smd_endpoint_ops ;
 struct qcom_smd_channel* qcom_smd_find_channel (struct qcom_smd_edge*,char const*) ;
 struct qcom_smd_device* to_smd_device (struct rpmsg_device*) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static struct rpmsg_endpoint *qcom_smd_create_ept(struct rpmsg_device *rpdev,
        rpmsg_rx_cb_t cb, void *priv,
        struct rpmsg_channel_info chinfo)
{
 struct qcom_smd_endpoint *qsept;
 struct qcom_smd_channel *channel;
 struct qcom_smd_device *qsdev = to_smd_device(rpdev);
 struct qcom_smd_edge *edge = qsdev->edge;
 struct rpmsg_endpoint *ept;
 const char *name = chinfo.name;
 int ret;


 ret = wait_event_interruptible_timeout(edge->new_channel_event,
   (channel = qcom_smd_find_channel(edge, name)) != ((void*)0),
   HZ);
 if (!ret)
  return ((void*)0);

 if (channel->state != SMD_CHANNEL_CLOSED) {
  dev_err(&rpdev->dev, "channel %s is busy\n", channel->name);
  return ((void*)0);
 }

 qsept = kzalloc(sizeof(*qsept), GFP_KERNEL);
 if (!qsept)
  return ((void*)0);

 ept = &qsept->ept;

 kref_init(&ept->refcount);

 ept->rpdev = rpdev;
 ept->cb = cb;
 ept->priv = priv;
 ept->ops = &qcom_smd_endpoint_ops;

 channel->qsept = qsept;
 qsept->qsch = channel;

 ret = qcom_smd_channel_open(channel, cb);
 if (ret)
  goto free_ept;

 return ept;

free_ept:
 channel->qsept = ((void*)0);
 kref_put(&ept->refcount, __ept_release);
 return ((void*)0);
}
