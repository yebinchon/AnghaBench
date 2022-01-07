
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; } ;
struct ssctl_subsys_event_resp {int evt_driven_valid; TYPE_1__ resp; int evt_driven; int event; int subsys_name; int subsys_name_len; } ;
struct ssctl_subsys_event_req {int evt_driven_valid; TYPE_1__ resp; int evt_driven; int event; int subsys_name; int subsys_name_len; } ;
struct qmi_txn {int dummy; } ;
struct qcom_sysmon {int dev; int ssctl; int qmi; } ;
typedef int resp ;
typedef int req ;


 int HZ ;
 int SSCTL_SSR_EVENT_BEFORE_SHUTDOWN ;
 int SSCTL_SSR_EVENT_FORCED ;
 int SSCTL_SUBSYS_EVENT_REQ ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int memset (struct ssctl_subsys_event_resp*,int ,int) ;
 int qmi_send_request (int *,int *,struct qmi_txn*,int ,int,int ,struct ssctl_subsys_event_resp*) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (int *,struct qmi_txn*,int ,struct ssctl_subsys_event_resp*) ;
 int qmi_txn_wait (struct qmi_txn*,int) ;
 int ssctl_subsys_event_req_ei ;
 int ssctl_subsys_event_resp_ei ;
 int strlcpy (int ,char const*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void ssctl_send_event(struct qcom_sysmon *sysmon, const char *name)
{
 struct ssctl_subsys_event_resp resp;
 struct ssctl_subsys_event_req req;
 struct qmi_txn txn;
 int ret;

 memset(&resp, 0, sizeof(resp));
 ret = qmi_txn_init(&sysmon->qmi, &txn, ssctl_subsys_event_resp_ei, &resp);
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to allocate QMI txn\n");
  return;
 }

 memset(&req, 0, sizeof(req));
 strlcpy(req.subsys_name, name, sizeof(req.subsys_name));
 req.subsys_name_len = strlen(req.subsys_name);
 req.event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN;
 req.evt_driven_valid = 1;
 req.evt_driven = SSCTL_SSR_EVENT_FORCED;

 ret = qmi_send_request(&sysmon->qmi, &sysmon->ssctl, &txn,
          SSCTL_SUBSYS_EVENT_REQ, 40,
          ssctl_subsys_event_req_ei, &req);
 if (ret < 0) {
  dev_err(sysmon->dev, "failed to send shutdown request\n");
  qmi_txn_cancel(&txn);
  return;
 }

 ret = qmi_txn_wait(&txn, 5 * HZ);
 if (ret < 0)
  dev_err(sysmon->dev, "failed receiving QMI response\n");
 else if (resp.resp.result)
  dev_err(sysmon->dev, "ssr event send failed\n");
 else
  dev_dbg(sysmon->dev, "ssr event send completed\n");
}
