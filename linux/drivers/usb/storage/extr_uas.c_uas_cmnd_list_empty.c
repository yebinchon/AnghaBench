
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_dev_info {int qdepth; int lock; scalar_t__* cmnd; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int uas_cmnd_list_empty(struct uas_dev_info *devinfo)
{
 unsigned long flags;
 int i, r = 1;

 spin_lock_irqsave(&devinfo->lock, flags);

 for (i = 0; i < devinfo->qdepth; i++) {
  if (devinfo->cmnd[i]) {
   r = 0;
   break;
  }
 }

 spin_unlock_irqrestore(&devinfo->lock, flags);

 return r;
}
