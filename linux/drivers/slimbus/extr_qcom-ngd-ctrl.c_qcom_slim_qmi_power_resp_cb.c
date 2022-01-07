
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_qrtr {int dummy; } ;
struct TYPE_2__ {scalar_t__ result; } ;
struct slimbus_power_resp_msg_v01 {TYPE_1__ resp; } ;
struct qmi_txn {int completion; } ;
struct qmi_handle {int dummy; } ;


 scalar_t__ QMI_RESULT_SUCCESS_V01 ;
 int complete (int *) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static void qcom_slim_qmi_power_resp_cb(struct qmi_handle *handle,
     struct sockaddr_qrtr *sq,
     struct qmi_txn *txn, const void *data)
{
 struct slimbus_power_resp_msg_v01 *resp;

 resp = (struct slimbus_power_resp_msg_v01 *)data;
 if (resp->resp.result != QMI_RESULT_SUCCESS_V01)
  pr_err("QMI power request failed 0x%x\n",
    resp->resp.result);

 complete(&txn->completion);
}
