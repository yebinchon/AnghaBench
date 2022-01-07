
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void virtqueue ;
struct airq_info {int lock; int aiv; } ;


 unsigned long airq_iv_end (int ) ;
 int airq_iv_free_bit (int ,unsigned long) ;
 scalar_t__ airq_iv_get_ptr (int ,unsigned long) ;
 int airq_iv_set_ptr (int ,unsigned long,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drop_airq_indicator(struct virtqueue *vq, struct airq_info *info)
{
 unsigned long i, flags;

 write_lock_irqsave(&info->lock, flags);
 for (i = 0; i < airq_iv_end(info->aiv); i++) {
  if (vq == (void *)airq_iv_get_ptr(info->aiv, i)) {
   airq_iv_free_bit(info->aiv, i);
   airq_iv_set_ptr(info->aiv, i, 0);
   break;
  }
 }
 write_unlock_irqrestore(&info->lock, flags);
}
