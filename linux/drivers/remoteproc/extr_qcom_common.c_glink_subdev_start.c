
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int dummy; } ;
struct qcom_rproc_glink {int edge; int node; int dev; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int qcom_glink_smem_register (int ,int ) ;
 struct qcom_rproc_glink* to_glink_subdev (struct rproc_subdev*) ;

__attribute__((used)) static int glink_subdev_start(struct rproc_subdev *subdev)
{
 struct qcom_rproc_glink *glink = to_glink_subdev(subdev);

 glink->edge = qcom_glink_smem_register(glink->dev, glink->node);

 return PTR_ERR_OR_ZERO(glink->edge);
}
