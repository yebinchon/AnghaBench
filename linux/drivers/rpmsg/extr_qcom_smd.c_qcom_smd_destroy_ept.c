
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_endpoint {int refcount; } ;
struct qcom_smd_endpoint {struct qcom_smd_channel* qsch; } ;
struct qcom_smd_channel {int * qsept; } ;


 int __ept_release ;
 int kref_put (int *,int ) ;
 int qcom_smd_channel_close (struct qcom_smd_channel*) ;
 struct qcom_smd_endpoint* to_smd_endpoint (struct rpmsg_endpoint*) ;

__attribute__((used)) static void qcom_smd_destroy_ept(struct rpmsg_endpoint *ept)
{
 struct qcom_smd_endpoint *qsept = to_smd_endpoint(ept);
 struct qcom_smd_channel *ch = qsept->qsch;

 qcom_smd_channel_close(ch);
 ch->qsept = ((void*)0);
 kref_put(&ept->refcount, __ept_release);
}
