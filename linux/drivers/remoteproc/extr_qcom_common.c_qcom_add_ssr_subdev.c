
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc {int dummy; } ;
struct TYPE_2__ {int unprepare; } ;
struct qcom_rproc_ssr {char const* name; TYPE_1__ subdev; } ;


 int rproc_add_subdev (struct rproc*,TYPE_1__*) ;
 int ssr_notify_unprepare ;

void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
    const char *ssr_name)
{
 ssr->name = ssr_name;
 ssr->subdev.unprepare = ssr_notify_unprepare;

 rproc_add_subdev(rproc, &ssr->subdev);
}
