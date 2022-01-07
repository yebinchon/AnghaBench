
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int dummy; } ;
struct qcom_rproc_subdev {int edge; int node; int dev; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int qcom_smd_register_edge (int ,int ) ;
 struct qcom_rproc_subdev* to_smd_subdev (struct rproc_subdev*) ;

__attribute__((used)) static int smd_subdev_start(struct rproc_subdev *subdev)
{
 struct qcom_rproc_subdev *smd = to_smd_subdev(subdev);

 smd->edge = qcom_smd_register_edge(smd->dev, smd->node);

 return PTR_ERR_OR_ZERO(smd->edge);
}
