
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_pick_width; int bus_pick_count; } ;


 int BUG () ;
 TYPE_1__ sossi ;

__attribute__((used)) static void sossi_set_bits_per_cycle(int bpc)
{
 int bus_pick_count, bus_pick_width;






 switch (bpc) {
 case 8:
  bus_pick_count = 4;
  bus_pick_width = 8;
  break;
 case 16:
  bus_pick_count = 2;
  bus_pick_width = 16;
  break;
 default:
  BUG();
  return;
 }
 sossi.bus_pick_width = bus_pick_width;
 sossi.bus_pick_count = bus_pick_count;
}
