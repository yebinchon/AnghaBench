
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int groups; struct device_node* of_node; int release; struct device* parent; } ;
struct qcom_smd_edge {TYPE_1__ dev; int mbox_chan; int scan_work; int new_channel_event; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct qcom_smd_edge* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR_OR_NULL (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ,struct device_node*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 struct qcom_smd_edge* kzalloc (int,int ) ;
 int mbox_free_channel (int ) ;
 int pr_err (char*) ;
 int put_device (TYPE_1__*) ;
 int qcom_smd_create_chrdev (struct qcom_smd_edge*) ;
 int qcom_smd_edge_groups ;
 int qcom_smd_edge_release ;
 int qcom_smd_parse_edge (TYPE_1__*,struct device_node*,struct qcom_smd_edge*) ;
 int schedule_work (int *) ;

struct qcom_smd_edge *qcom_smd_register_edge(struct device *parent,
          struct device_node *node)
{
 struct qcom_smd_edge *edge;
 int ret;

 edge = kzalloc(sizeof(*edge), GFP_KERNEL);
 if (!edge)
  return ERR_PTR(-ENOMEM);

 init_waitqueue_head(&edge->new_channel_event);

 edge->dev.parent = parent;
 edge->dev.release = qcom_smd_edge_release;
 edge->dev.of_node = node;
 edge->dev.groups = qcom_smd_edge_groups;
 dev_set_name(&edge->dev, "%s:%pOFn", dev_name(parent), node);
 ret = device_register(&edge->dev);
 if (ret) {
  pr_err("failed to register smd edge\n");
  put_device(&edge->dev);
  return ERR_PTR(ret);
 }

 ret = qcom_smd_parse_edge(&edge->dev, node, edge);
 if (ret) {
  dev_err(&edge->dev, "failed to parse smd edge\n");
  goto unregister_dev;
 }

 ret = qcom_smd_create_chrdev(edge);
 if (ret) {
  dev_err(&edge->dev, "failed to register chrdev for edge\n");
  goto unregister_dev;
 }

 schedule_work(&edge->scan_work);

 return edge;

unregister_dev:
 if (!IS_ERR_OR_NULL(edge->mbox_chan))
  mbox_free_channel(edge->mbox_chan);

 device_unregister(&edge->dev);
 return ERR_PTR(ret);
}
