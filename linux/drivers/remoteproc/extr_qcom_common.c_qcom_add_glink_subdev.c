
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct rproc {struct device dev; } ;
struct TYPE_4__ {int stop; int start; } ;
struct qcom_rproc_glink {TYPE_2__ subdev; struct device* dev; int node; } ;
struct TYPE_3__ {int of_node; } ;


 int glink_subdev_start ;
 int glink_subdev_stop ;
 int of_get_child_by_name (int ,char*) ;
 int rproc_add_subdev (struct rproc*,TYPE_2__*) ;

void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
{
 struct device *dev = &rproc->dev;

 glink->node = of_get_child_by_name(dev->parent->of_node, "glink-edge");
 if (!glink->node)
  return;

 glink->dev = dev;
 glink->subdev.start = glink_subdev_start;
 glink->subdev.stop = glink_subdev_stop;

 rproc_add_subdev(rproc, &glink->subdev);
}
