
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct virtqueue {int dummy; } ;
struct airq_info {int lock; TYPE_1__* aiv; } ;
struct TYPE_3__ {scalar_t__ vector; } ;


 int MAX_AIRQ_AREAS ;
 struct airq_info** airq_areas ;
 int airq_areas_lock ;
 unsigned long airq_iv_alloc (TYPE_1__*,int) ;
 int airq_iv_set_ptr (TYPE_1__*,unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct airq_info* new_airq_info (int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long get_airq_indicator(struct virtqueue *vqs[], int nvqs,
     u64 *first, void **airq_info)
{
 int i, j;
 struct airq_info *info;
 unsigned long indicator_addr = 0;
 unsigned long bit, flags;

 for (i = 0; i < MAX_AIRQ_AREAS && !indicator_addr; i++) {
  mutex_lock(&airq_areas_lock);
  if (!airq_areas[i])
   airq_areas[i] = new_airq_info(i);
  info = airq_areas[i];
  mutex_unlock(&airq_areas_lock);
  if (!info)
   return 0;
  write_lock_irqsave(&info->lock, flags);
  bit = airq_iv_alloc(info->aiv, nvqs);
  if (bit == -1UL) {

   write_unlock_irqrestore(&info->lock, flags);
   continue;
  }
  *first = bit;
  *airq_info = info;
  indicator_addr = (unsigned long)info->aiv->vector;
  for (j = 0; j < nvqs; j++) {
   airq_iv_set_ptr(info->aiv, bit + j,
     (unsigned long)vqs[j]);
  }
  write_unlock_irqrestore(&info->lock, flags);
 }
 return indicator_addr;
}
