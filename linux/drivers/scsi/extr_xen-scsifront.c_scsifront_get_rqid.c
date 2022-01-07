
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsifrnt_info {int shadow_lock; int shadow_free_bitmap; } ;


 int VSCSIIF_MAX_REQS ;
 int __clear_bit (int,int ) ;
 int find_first_bit (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int scsifront_get_rqid(struct vscsifrnt_info *info)
{
 unsigned long flags;
 int free;

 spin_lock_irqsave(&info->shadow_lock, flags);

 free = find_first_bit(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);
 __clear_bit(free, info->shadow_free_bitmap);

 spin_unlock_irqrestore(&info->shadow_lock, flags);

 return free;
}
