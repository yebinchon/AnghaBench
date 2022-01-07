
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vscsifrnt_info {int wq_sync; TYPE_1__* host; scalar_t__ wait_ring_available; } ;
struct TYPE_2__ {int host_lock; } ;


 int scsifront_ring_drain (struct vscsifrnt_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static int scsifront_cmd_done(struct vscsifrnt_info *info)
{
 int more_to_do;
 unsigned long flags;

 spin_lock_irqsave(info->host->host_lock, flags);

 more_to_do = scsifront_ring_drain(info);

 info->wait_ring_available = 0;

 spin_unlock_irqrestore(info->host->host_lock, flags);

 wake_up(&info->wq_sync);

 return more_to_do;
}
