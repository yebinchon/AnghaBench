
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_wmac {int scan_timeout; } ;


 int cancel_delayed_work_sync (int *) ;
 int qtnf_mac_scan_finish (struct qtnf_wmac*,int) ;

void qtnf_scan_done(struct qtnf_wmac *mac, bool aborted)
{
 cancel_delayed_work_sync(&mac->scan_timeout);
 qtnf_mac_scan_finish(mac, aborted);
}
