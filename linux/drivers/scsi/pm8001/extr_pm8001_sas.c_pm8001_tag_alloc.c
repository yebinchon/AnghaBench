
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pm8001_hba_info {unsigned int tags_num; int bitmap_lock; void* tags; } ;


 int SAS_QUEUE_FULL ;
 unsigned int find_first_zero_bit (void*,unsigned int) ;
 int set_bit (unsigned int,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

inline int pm8001_tag_alloc(struct pm8001_hba_info *pm8001_ha, u32 *tag_out)
{
 unsigned int tag;
 void *bitmap = pm8001_ha->tags;
 unsigned long flags;

 spin_lock_irqsave(&pm8001_ha->bitmap_lock, flags);
 tag = find_first_zero_bit(bitmap, pm8001_ha->tags_num);
 if (tag >= pm8001_ha->tags_num) {
  spin_unlock_irqrestore(&pm8001_ha->bitmap_lock, flags);
  return -SAS_QUEUE_FULL;
 }
 set_bit(tag, bitmap);
 spin_unlock_irqrestore(&pm8001_ha->bitmap_lock, flags);
 *tag_out = tag;
 return 0;
}
