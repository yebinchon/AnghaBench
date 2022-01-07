
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct rproc {struct device dev; } ;
struct TYPE_4__ {int stop; int start; } ;
struct qcom_rproc_subdev {TYPE_2__ subdev; struct device* dev; int node; } ;
struct TYPE_3__ {int of_node; } ;


 int of_get_child_by_name (int ,char*) ;
 int rproc_add_subdev (struct rproc*,TYPE_2__*) ;
 int smd_subdev_start ;
 int smd_subdev_stop ;

void qcom_add_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
{
 struct device *dev = &rproc->dev;

 smd->node = of_get_child_by_name(dev->parent->of_node, "smd-edge");
 if (!smd->node)
  return;

 smd->dev = dev;
 smd->subdev.start = smd_subdev_start;
 smd->subdev.stop = smd_subdev_stop;

 rproc_add_subdev(rproc, &smd->subdev);
}
