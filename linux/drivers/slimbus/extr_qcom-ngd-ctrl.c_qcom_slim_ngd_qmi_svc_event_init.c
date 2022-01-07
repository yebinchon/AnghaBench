
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_slim_ngd_qmi {int svc_event_hdl; } ;
struct qcom_slim_ngd_ctrl {int dev; struct qcom_slim_ngd_qmi qmi; } ;


 int SLIMBUS_QMI_INS_ID ;
 int SLIMBUS_QMI_SVC_ID ;
 int SLIMBUS_QMI_SVC_V1 ;
 int dev_err (int ,char*,int) ;
 int qcom_slim_ngd_qmi_svc_event_ops ;
 int qmi_add_lookup (int *,int ,int ,int ) ;
 int qmi_handle_init (int *,int ,int *,int *) ;
 int qmi_handle_release (int *) ;

__attribute__((used)) static int qcom_slim_ngd_qmi_svc_event_init(struct qcom_slim_ngd_ctrl *ctrl)
{
 struct qcom_slim_ngd_qmi *qmi = &ctrl->qmi;
 int ret;

 ret = qmi_handle_init(&qmi->svc_event_hdl, 0,
    &qcom_slim_ngd_qmi_svc_event_ops, ((void*)0));
 if (ret < 0) {
  dev_err(ctrl->dev, "qmi_handle_init failed: %d\n", ret);
  return ret;
 }

 ret = qmi_add_lookup(&qmi->svc_event_hdl, SLIMBUS_QMI_SVC_ID,
   SLIMBUS_QMI_SVC_V1, SLIMBUS_QMI_INS_ID);
 if (ret < 0) {
  dev_err(ctrl->dev, "qmi_add_lookup failed: %d\n", ret);
  qmi_handle_release(&qmi->svc_event_hdl);
 }
 return ret;
}
