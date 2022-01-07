
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vscsifrnt_info {int shadow_lock; } ;


 int _scsifront_put_rqid (struct vscsifrnt_info*,int ) ;
 int scsifront_wake_up (struct vscsifrnt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scsifront_put_rqid(struct vscsifrnt_info *info, uint32_t id)
{
 unsigned long flags;
 int kick;

 spin_lock_irqsave(&info->shadow_lock, flags);
 kick = _scsifront_put_rqid(info, id);
 spin_unlock_irqrestore(&info->shadow_lock, flags);

 if (kick)
  scsifront_wake_up(info);
}
