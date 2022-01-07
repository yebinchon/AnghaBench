
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qtnf_wmac {int macid; } ;
struct qlink_event_scan_complete {int flags; } ;


 int EINVAL ;
 int QLINK_SCAN_ABORTED ;
 int le32_to_cpu (int ) ;
 int pr_err (char*,int ) ;
 int qtnf_scan_done (struct qtnf_wmac*,int) ;

__attribute__((used)) static int
qtnf_event_handle_scan_complete(struct qtnf_wmac *mac,
    const struct qlink_event_scan_complete *status,
    u16 len)
{
 if (len < sizeof(*status)) {
  pr_err("MAC%u: payload is too short\n", mac->macid);
  return -EINVAL;
 }

 qtnf_scan_done(mac, le32_to_cpu(status->flags) & QLINK_SCAN_ABORTED);

 return 0;
}
