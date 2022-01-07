
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_wmac {int mac_lock; int * scan_req; } ;
struct cfg80211_scan_info {int aborted; } ;


 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void qtnf_mac_scan_finish(struct qtnf_wmac *mac, bool aborted)
{
 struct cfg80211_scan_info info = {
  .aborted = aborted,
 };

 mutex_lock(&mac->mac_lock);

 if (mac->scan_req) {
  cfg80211_scan_done(mac->scan_req, &info);
  mac->scan_req = ((void*)0);
 }

 mutex_unlock(&mac->mac_lock);
}
