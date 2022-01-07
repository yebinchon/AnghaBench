
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_qmi {int svc_event_hdl; } ;


 int qmi_handle_release (int *) ;

__attribute__((used)) static void qcom_slim_ngd_qmi_svc_event_deinit(struct qcom_slim_ngd_qmi *qmi)
{
 qmi_handle_release(&qmi->svc_event_hdl);
}
