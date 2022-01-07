
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct fotg210_hcd {scalar_t__ uframe_periodic_max; } ;


 scalar_t__ periodic_usecs (struct fotg210_hcd*,int,int) ;

__attribute__((used)) static inline int itd_slot_ok(struct fotg210_hcd *fotg210, u32 mod, u32 uframe,
  u8 usecs, u32 period)
{
 uframe %= period;
 do {

  if (periodic_usecs(fotg210, uframe >> 3, uframe & 0x7)
    > (fotg210->uframe_periodic_max - usecs))
   return 0;


  uframe += period;
 } while (uframe < mod);
 return 1;
}
