
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int dummy; } ;
struct qcom_rproc_subdev {int * edge; } ;


 int qcom_smd_unregister_edge (int *) ;
 struct qcom_rproc_subdev* to_smd_subdev (struct rproc_subdev*) ;

__attribute__((used)) static void smd_subdev_stop(struct rproc_subdev *subdev, bool crashed)
{
 struct qcom_rproc_subdev *smd = to_smd_subdev(subdev);

 qcom_smd_unregister_edge(smd->edge);
 smd->edge = ((void*)0);
}
