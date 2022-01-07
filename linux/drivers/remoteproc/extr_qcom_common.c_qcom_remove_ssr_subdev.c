
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct qcom_rproc_ssr {int subdev; } ;


 int rproc_remove_subdev (struct rproc*,int *) ;

void qcom_remove_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr)
{
 rproc_remove_subdev(rproc, &ssr->subdev);
}
