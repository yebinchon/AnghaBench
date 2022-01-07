
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;


 int qcom_glink_native_remove (struct qcom_glink*) ;
 int qcom_glink_native_unregister (struct qcom_glink*) ;

void qcom_glink_smem_unregister(struct qcom_glink *glink)
{
 qcom_glink_native_remove(glink);
 qcom_glink_native_unregister(glink);
}
