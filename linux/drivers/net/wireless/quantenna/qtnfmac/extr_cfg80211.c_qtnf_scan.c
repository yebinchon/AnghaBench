
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct qtnf_wmac {int scan_timeout; TYPE_1__* bus; int macid; struct cfg80211_scan_request* scan_req; } ;
struct cfg80211_scan_request {int dummy; } ;
struct TYPE_2__ {int workqueue; } ;


 int HZ ;
 int QTNF_SCAN_TIMEOUT_SEC ;
 int cancel_delayed_work_sync (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int qtnf_cmd_send_scan (struct qtnf_wmac*) ;
 int queue_delayed_work (int ,int *,int) ;
 struct qtnf_wmac* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int
qtnf_scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
{
 struct qtnf_wmac *mac = wiphy_priv(wiphy);
 int ret;

 cancel_delayed_work_sync(&mac->scan_timeout);

 mac->scan_req = request;

 ret = qtnf_cmd_send_scan(mac);
 if (ret) {
  pr_err("MAC%u: failed to start scan\n", mac->macid);
  mac->scan_req = ((void*)0);
  goto out;
 }

 pr_debug("MAC%u: scan started\n", mac->macid);
 queue_delayed_work(mac->bus->workqueue, &mac->scan_timeout,
      QTNF_SCAN_TIMEOUT_SEC * HZ);

out:
 return ret;
}
