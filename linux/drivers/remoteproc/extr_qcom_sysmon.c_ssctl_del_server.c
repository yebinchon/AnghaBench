
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_service {struct qcom_sysmon* priv; } ;
struct qmi_handle {int dummy; } ;
struct qcom_sysmon {scalar_t__ ssctl_version; } ;



__attribute__((used)) static void ssctl_del_server(struct qmi_handle *qmi, struct qmi_service *svc)
{
 struct qcom_sysmon *sysmon = svc->priv;

 sysmon->ssctl_version = 0;
}
