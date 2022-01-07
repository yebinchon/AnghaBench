
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int dummy; } ;
struct qcom_rproc_glink {int * edge; } ;


 int qcom_glink_smem_unregister (int *) ;
 struct qcom_rproc_glink* to_glink_subdev (struct rproc_subdev*) ;

__attribute__((used)) static void glink_subdev_stop(struct rproc_subdev *subdev, bool crashed)
{
 struct qcom_rproc_glink *glink = to_glink_subdev(subdev);

 qcom_glink_smem_unregister(glink->edge);
 glink->edge = ((void*)0);
}
