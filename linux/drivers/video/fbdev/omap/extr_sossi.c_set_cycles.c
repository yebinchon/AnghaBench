
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_pick_width; } ;


 int BUG_ON (unsigned long) ;
 int SOSSI_INIT1_REG ;
 TYPE_1__ sossi ;
 int sossi_clear_bits (int ,int) ;
 int sossi_set_bits (int ,unsigned long) ;

__attribute__((used)) static void set_cycles(unsigned int len)
{
 unsigned long nr_cycles = len / (sossi.bus_pick_width / 8);

 BUG_ON((nr_cycles - 1) & ~0x3ffff);

 sossi_clear_bits(SOSSI_INIT1_REG, 0x3ffff);
 sossi_set_bits(SOSSI_INIT1_REG, (nr_cycles - 1) & 0x3ffff);
}
