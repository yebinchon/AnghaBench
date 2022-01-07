
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_endpoint {int dummy; } ;
struct qcom_smd_endpoint {int qsch; } ;


 int __qcom_smd_send (int ,void*,int,int) ;
 struct qcom_smd_endpoint* to_smd_endpoint (struct rpmsg_endpoint*) ;

__attribute__((used)) static int qcom_smd_trysend(struct rpmsg_endpoint *ept, void *data, int len)
{
 struct qcom_smd_endpoint *qsept = to_smd_endpoint(ept);

 return __qcom_smd_send(qsept->qsch, data, len, 0);
}
