
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int node; } ;
struct rproc {int dummy; } ;


 int list_del (int *) ;

void rproc_remove_subdev(struct rproc *rproc, struct rproc_subdev *subdev)
{
 list_del(&subdev->node);
}
