
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct qcom_rproc_subdev {int node; int subdev; } ;


 int of_node_put (int ) ;
 int rproc_remove_subdev (struct rproc*,int *) ;

void qcom_remove_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
{
 if (!smd->node)
  return;

 rproc_remove_subdev(rproc, &smd->subdev);
 of_node_put(smd->node);
}
