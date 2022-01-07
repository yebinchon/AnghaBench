
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_subdev {int dummy; } ;
struct qcom_rproc_ssr {scalar_t__ name; } ;


 int blocking_notifier_call_chain (int *,int ,void*) ;
 int ssr_notifiers ;
 struct qcom_rproc_ssr* to_ssr_subdev (struct rproc_subdev*) ;

__attribute__((used)) static void ssr_notify_unprepare(struct rproc_subdev *subdev)
{
 struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);

 blocking_notifier_call_chain(&ssr_notifiers, 0, (void *)ssr->name);
}
