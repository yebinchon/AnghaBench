
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct uwb_est_entry {int dummy; } ;
struct TYPE_4__ {int type_event_high; scalar_t__ vendor; scalar_t__ product; size_t entries; struct uwb_est_entry const* entry; } ;


 int memmove (TYPE_1__*,TYPE_1__*,unsigned int) ;
 TYPE_1__* uwb_est ;
 int uwb_est_grow () ;
 int uwb_est_lock ;
 unsigned int uwb_est_size ;
 unsigned int uwb_est_used ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int uwb_est_register(u8 type, u8 event_high, u16 vendor, u16 product,
       const struct uwb_est_entry *entry, size_t entries)
{
 unsigned long flags;
 unsigned itr;
 int result = 0;

 write_lock_irqsave(&uwb_est_lock, flags);
 if (uwb_est_used == uwb_est_size) {
  result = uwb_est_grow();
  if (result < 0)
   goto out;
 }

 for (itr = 0; itr < uwb_est_used; itr++)
  if (uwb_est[itr].type_event_high < type
      && uwb_est[itr].vendor < vendor
      && uwb_est[itr].product < product)
   break;


 if (itr < uwb_est_used)
  memmove(&uwb_est[itr+1], &uwb_est[itr], uwb_est_used - itr);
 uwb_est[itr].type_event_high = type << 8 | event_high;
 uwb_est[itr].vendor = vendor;
 uwb_est[itr].product = product;
 uwb_est[itr].entry = entry;
 uwb_est[itr].entries = entries;
 uwb_est_used++;
out:
 write_unlock_irqrestore(&uwb_est_lock, flags);
 return result;
}
