
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbg_bit_usage_tracker {int* per_bit_usage; int mask; } ;


 int BIT (int) ;
 int ffs (int) ;

__attribute__((used)) static bool vbg_track_bit_usage(struct vbg_bit_usage_tracker *tracker,
    u32 changed, u32 previous)
{
 bool global_change = 0;

 while (changed) {
  u32 bit = ffs(changed) - 1;
  u32 bitmask = BIT(bit);

  if (bitmask & previous) {
   tracker->per_bit_usage[bit] -= 1;
   if (tracker->per_bit_usage[bit] == 0) {
    global_change = 1;
    tracker->mask &= ~bitmask;
   }
  } else {
   tracker->per_bit_usage[bit] += 1;
   if (tracker->per_bit_usage[bit] == 1) {
    global_change = 1;
    tracker->mask |= bitmask;
   }
  }

  changed &= ~bitmask;
 }

 return global_change;
}
