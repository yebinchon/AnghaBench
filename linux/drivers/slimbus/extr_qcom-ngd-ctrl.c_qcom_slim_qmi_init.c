
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct slimbus_select_inst_req_msg_v01 {int instance; int mode_valid; int mode; } ;
struct qmi_handle {int sock; } ;
struct TYPE_4__ {struct qmi_handle* handle; int svc_info; } ;
struct qcom_slim_ngd_ctrl {int dev; TYPE_2__ qmi; TYPE_1__* ngd; } ;
struct TYPE_3__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLIMBUS_MODE_MASTER_V01 ;
 int SLIMBUS_MODE_SATELLITE_V01 ;
 int SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN ;
 int dev_err (int ,char*,...) ;
 int devm_kfree (int ,struct qmi_handle*) ;
 struct qmi_handle* devm_kzalloc (int ,int,int ) ;
 int kernel_connect (int ,struct sockaddr*,int,int ) ;
 int qcom_slim_qmi_msg_handlers ;
 int qcom_slim_qmi_send_select_inst_req (struct qcom_slim_ngd_ctrl*,struct slimbus_select_inst_req_msg_v01*) ;
 int qmi_handle_init (struct qmi_handle*,int ,int *,int ) ;
 int qmi_handle_release (struct qmi_handle*) ;

__attribute__((used)) static int qcom_slim_qmi_init(struct qcom_slim_ngd_ctrl *ctrl,
         bool apps_is_master)
{
 struct slimbus_select_inst_req_msg_v01 req;
 struct qmi_handle *handle;
 int rc;

 handle = devm_kzalloc(ctrl->dev, sizeof(*handle), GFP_KERNEL);
 if (!handle)
  return -ENOMEM;

 rc = qmi_handle_init(handle, SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN,
    ((void*)0), qcom_slim_qmi_msg_handlers);
 if (rc < 0) {
  dev_err(ctrl->dev, "QMI client init failed: %d\n", rc);
  goto qmi_handle_init_failed;
 }

 rc = kernel_connect(handle->sock,
    (struct sockaddr *)&ctrl->qmi.svc_info,
    sizeof(ctrl->qmi.svc_info), 0);
 if (rc < 0) {
  dev_err(ctrl->dev, "Remote Service connect failed: %d\n", rc);
  goto qmi_connect_to_service_failed;
 }


 req.instance = (ctrl->ngd->id >> 1);
 req.mode_valid = 1;


 if (apps_is_master)
  req.mode = SLIMBUS_MODE_SATELLITE_V01;
 else
  req.mode = SLIMBUS_MODE_MASTER_V01;

 ctrl->qmi.handle = handle;

 rc = qcom_slim_qmi_send_select_inst_req(ctrl, &req);
 if (rc) {
  dev_err(ctrl->dev, "failed to select h/w instance\n");
  goto qmi_select_instance_failed;
 }

 return 0;

qmi_select_instance_failed:
 ctrl->qmi.handle = ((void*)0);
qmi_connect_to_service_failed:
 qmi_handle_release(handle);
qmi_handle_init_failed:
 devm_kfree(ctrl->dev, handle);
 return rc;
}
