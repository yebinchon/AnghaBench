
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {TYPE_1__* ept; } ;
struct qcom_sysmon {int * ept; } ;
struct TYPE_2__ {struct qcom_sysmon* priv; } ;



__attribute__((used)) static void sysmon_remove(struct rpmsg_device *rpdev)
{
 struct qcom_sysmon *sysmon = rpdev->ept->priv;

 sysmon->ept = ((void*)0);
}
