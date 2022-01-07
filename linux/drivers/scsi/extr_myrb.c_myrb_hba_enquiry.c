
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myrb_hba {scalar_t__ new_ev_seq; int need_err_info; int need_ldev_info; int need_rbld; int rbld_first; int need_cc_status; int host; scalar_t__ secondary_monitor_time; int bgi_status_supported; int need_bgi_status; int old_ev_seq; struct myrb_enquiry* enquiry; int enquiry_addr; } ;
struct TYPE_2__ {scalar_t__ deferred; } ;
struct myrb_enquiry {int ldev_count; scalar_t__ ev_seq; scalar_t__ ldev_offline; scalar_t__ pdev_dead; scalar_t__ rbld; int ldev_critical; TYPE_1__ status; } ;


 int KERN_CRIT ;
 int KERN_INFO ;






 int MYRB_CMD_ENQUIRY ;

 scalar_t__ MYRB_SECONDARY_MONITOR_INTERVAL ;
 unsigned short MYRB_STATUS_SUCCESS ;


 scalar_t__ jiffies ;
 int memcpy (struct myrb_enquiry*,struct myrb_enquiry*,int) ;
 unsigned short myrb_exec_type3 (struct myrb_hba*,int ,int ) ;
 int shost_printk (int ,int ,char*,...) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned short myrb_hba_enquiry(struct myrb_hba *cb)
{
 struct myrb_enquiry old, *new;
 unsigned short status;

 memcpy(&old, cb->enquiry, sizeof(struct myrb_enquiry));

 status = myrb_exec_type3(cb, MYRB_CMD_ENQUIRY, cb->enquiry_addr);
 if (status != MYRB_STATUS_SUCCESS)
  return status;

 new = cb->enquiry;
 if (new->ldev_count > old.ldev_count) {
  int ldev_num = old.ldev_count - 1;

  while (++ldev_num < new->ldev_count)
   shost_printk(KERN_CRIT, cb->host,
         "Logical Drive %d Now Exists\n",
         ldev_num);
 }
 if (new->ldev_count < old.ldev_count) {
  int ldev_num = new->ldev_count - 1;

  while (++ldev_num < old.ldev_count)
   shost_printk(KERN_CRIT, cb->host,
         "Logical Drive %d No Longer Exists\n",
         ldev_num);
 }
 if (new->status.deferred != old.status.deferred)
  shost_printk(KERN_CRIT, cb->host,
        "Deferred Write Error Flag is now %s\n",
        (new->status.deferred ? "TRUE" : "FALSE"));
 if (new->ev_seq != old.ev_seq) {
  cb->new_ev_seq = new->ev_seq;
  cb->need_err_info = 1;
  shost_printk(KERN_INFO, cb->host,
        "Event log %d/%d (%d/%d) available\n",
        cb->old_ev_seq, cb->new_ev_seq,
        old.ev_seq, new->ev_seq);
 }
 if ((new->ldev_critical > 0 &&
      new->ldev_critical != old.ldev_critical) ||
     (new->ldev_offline > 0 &&
      new->ldev_offline != old.ldev_offline) ||
     (new->ldev_count != old.ldev_count)) {
  shost_printk(KERN_INFO, cb->host,
        "Logical drive count changed (%d/%d/%d)\n",
        new->ldev_critical,
        new->ldev_offline,
        new->ldev_count);
  cb->need_ldev_info = 1;
 }
 if (new->pdev_dead > 0 ||
     new->pdev_dead != old.pdev_dead ||
     time_after_eq(jiffies, cb->secondary_monitor_time
     + MYRB_SECONDARY_MONITOR_INTERVAL)) {
  cb->need_bgi_status = cb->bgi_status_supported;
  cb->secondary_monitor_time = jiffies;
 }
 if (new->rbld == 128 ||
     new->rbld == 135 ||
     old.rbld == 128 ||
     old.rbld == 135) {
  cb->need_rbld = 1;
  cb->rbld_first = (new->ldev_critical < old.ldev_critical);
 }
 if (old.rbld == 136)
  switch (new->rbld) {
  case 130:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Completed Successfully\n");
   break;
  case 128:
  case 135:
   break;
  case 136:
   cb->need_cc_status = 1;
   break;
  case 129:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Completed with Error\n");
   break;
  case 134:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Failed - Physical Device Failed\n");
   break;
  case 133:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Failed - Logical Drive Failed\n");
   break;
  case 132:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Failed - Other Causes\n");
   break;
  case 131:
   shost_printk(KERN_INFO, cb->host,
         "Consistency Check Successfully Terminated\n");
   break;
  }
 else if (new->rbld == 136)
  cb->need_cc_status = 1;

 return MYRB_STATUS_SUCCESS;
}
