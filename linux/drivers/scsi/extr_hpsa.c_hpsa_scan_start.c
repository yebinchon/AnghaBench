
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int scan_waiting; int drv_req_rescan; int reset_lock; scalar_t__ reset_in_progress; int scan_lock; scalar_t__ scan_finished; int scan_wait_queue; } ;
struct Scsi_Host {int dummy; } ;


 void hpsa_scan_complete (struct ctlr_info*) ;
 int hpsa_update_scsi_devices (struct ctlr_info*) ;
 int lockup_detected (struct ctlr_info*) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int wait_event (int ,scalar_t__) ;

__attribute__((used)) static void hpsa_scan_start(struct Scsi_Host *sh)
{
 struct ctlr_info *h = shost_to_hba(sh);
 unsigned long flags;







 if (unlikely(lockup_detected(h)))
  return hpsa_scan_complete(h);




 spin_lock_irqsave(&h->scan_lock, flags);
 if (h->scan_waiting) {
  spin_unlock_irqrestore(&h->scan_lock, flags);
  return;
 }

 spin_unlock_irqrestore(&h->scan_lock, flags);


 while (1) {
  spin_lock_irqsave(&h->scan_lock, flags);
  if (h->scan_finished)
   break;
  h->scan_waiting = 1;
  spin_unlock_irqrestore(&h->scan_lock, flags);
  wait_event(h->scan_wait_queue, h->scan_finished);





 }
 h->scan_finished = 0;
 h->scan_waiting = 0;
 spin_unlock_irqrestore(&h->scan_lock, flags);

 if (unlikely(lockup_detected(h)))
  return hpsa_scan_complete(h);




 spin_lock_irqsave(&h->reset_lock, flags);
 if (h->reset_in_progress) {
  h->drv_req_rescan = 1;
  spin_unlock_irqrestore(&h->reset_lock, flags);
  hpsa_scan_complete(h);
  return;
 }
 spin_unlock_irqrestore(&h->reset_lock, flags);

 hpsa_update_scsi_devices(h);

 hpsa_scan_complete(h);
}
