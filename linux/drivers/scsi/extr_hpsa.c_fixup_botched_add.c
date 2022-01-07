
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int ndevices; int lock; struct hpsa_scsi_dev_t** dev; } ;


 int kfree (struct hpsa_scsi_dev_t*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fixup_botched_add(struct ctlr_info *h,
 struct hpsa_scsi_dev_t *added)
{



 unsigned long flags;
 int i, j;

 spin_lock_irqsave(&h->lock, flags);
 for (i = 0; i < h->ndevices; i++) {
  if (h->dev[i] == added) {
   for (j = i; j < h->ndevices-1; j++)
    h->dev[j] = h->dev[j+1];
   h->ndevices--;
   break;
  }
 }
 spin_unlock_irqrestore(&h->lock, flags);
 kfree(added);
}
