
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int release; int * parent; int of_node; } ;
struct TYPE_3__ {int name; } ;
struct rpmsg_device {TYPE_2__ dev; void* dst; void* src; TYPE_1__ id; int * ops; } ;
struct qcom_smd_edge {int dev; int of_node; } ;
struct qcom_smd_device {struct rpmsg_device rpdev; struct qcom_smd_edge* edge; } ;
struct qcom_smd_channel {int name; struct qcom_smd_edge* edge; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* RPMSG_ADDR_ANY ;
 int RPMSG_NAME_SIZE ;
 int dev_dbg (int *,char*,int ) ;
 struct qcom_smd_device* kzalloc (int,int ) ;
 int qcom_smd_device_ops ;
 int qcom_smd_match_channel (int ,int ) ;
 int qcom_smd_release_device ;
 int rpmsg_register_device (struct rpmsg_device*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int qcom_smd_create_device(struct qcom_smd_channel *channel)
{
 struct qcom_smd_device *qsdev;
 struct rpmsg_device *rpdev;
 struct qcom_smd_edge *edge = channel->edge;

 dev_dbg(&edge->dev, "registering '%s'\n", channel->name);

 qsdev = kzalloc(sizeof(*qsdev), GFP_KERNEL);
 if (!qsdev)
  return -ENOMEM;


 qsdev->edge = edge;


 qsdev->rpdev.ops = &qcom_smd_device_ops;


 rpdev = &qsdev->rpdev;
 strncpy(rpdev->id.name, channel->name, RPMSG_NAME_SIZE);
 rpdev->src = RPMSG_ADDR_ANY;
 rpdev->dst = RPMSG_ADDR_ANY;

 rpdev->dev.of_node = qcom_smd_match_channel(edge->of_node, channel->name);
 rpdev->dev.parent = &edge->dev;
 rpdev->dev.release = qcom_smd_release_device;

 return rpmsg_register_device(rpdev);
}
