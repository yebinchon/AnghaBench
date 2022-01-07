
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uwb_est_entry {int dummy; } ;
struct uwb_est {int type_event_high; size_t entries; struct uwb_est_entry const* entry; int product; int vendor; } ;
typedef int est_cmp ;


 int ENOENT ;
 int memcmp (int *,struct uwb_est*,int) ;
 int memmove (int *,int *,unsigned int) ;
 int * uwb_est ;
 int uwb_est_lock ;
 unsigned int uwb_est_used ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int uwb_est_unregister(u8 type, u8 event_high, u16 vendor, u16 product,
         const struct uwb_est_entry *entry, size_t entries)
{
 unsigned long flags;
 unsigned itr;
 struct uwb_est est_cmp = {
  .type_event_high = type << 8 | event_high,
  .vendor = vendor,
  .product = product,
  .entry = entry,
  .entries = entries
 };
 write_lock_irqsave(&uwb_est_lock, flags);
 for (itr = 0; itr < uwb_est_used; itr++)
  if (!memcmp(&uwb_est[itr], &est_cmp, sizeof(est_cmp)))
   goto found;
 write_unlock_irqrestore(&uwb_est_lock, flags);
 return -ENOENT;

found:
 if (itr < uwb_est_used - 1)
  memmove(&uwb_est[itr], &uwb_est[itr+1], uwb_est_used - itr - 1);
 uwb_est_used--;
 write_unlock_irqrestore(&uwb_est_lock, flags);
 return 0;
}
