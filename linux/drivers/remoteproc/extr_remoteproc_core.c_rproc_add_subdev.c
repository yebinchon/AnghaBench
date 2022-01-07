
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int node; } ;
struct rproc {int subdevs; } ;


 int list_add_tail (int *,int *) ;

void rproc_add_subdev(struct rproc *rproc, struct rproc_subdev *subdev)
{
 list_add_tail(&subdev->node, &rproc->subdevs);
}
