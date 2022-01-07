
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int BIT (int) ;
 int O (int) ;
 int TRIGGER_LINE (int) ;
 int brd0_src0 ;
 int brd0_src1 ;
 int brd1_src0 ;
 int brd1_src1 ;
 int brd2_src0 ;
 int brd2_src1 ;
 int brd3_src0 ;
 int brd3_src1 ;
 int init_pci_fake () ;
 int ni_route_to_register (int ,int ,struct ni_route_tables const*) ;
 TYPE_1__ private ;
 int rgout0_src0 ;
 int rgout0_src1 ;
 int unittest (int,char*) ;

void test_ni_route_to_register(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(ni_route_to_register(O(0), O(0), T) < 0,
   "check for bad route 0-->0\n");
 unittest(ni_route_to_register(O(1), O(0), T) == 1,
   "validate first destination\n");
 unittest(ni_route_to_register(O(6), O(5), T) == 6,
   "validate middle destination\n");
 unittest(ni_route_to_register(O(8), O(9), T) == 8,
   "validate last destination\n");


 unittest(ni_route_to_register(rgout0_src0, TRIGGER_LINE(0), T) == 0,
   "validate indirect route through rgout0 to TRIGGER_LINE(0)\n");
 unittest(ni_route_to_register(rgout0_src0, TRIGGER_LINE(1), T) == 0,
   "validate indirect route through rgout0 to TRIGGER_LINE(1)\n");
 unittest(ni_route_to_register(rgout0_src1, TRIGGER_LINE(2), T) == 1,
   "validate indirect route through rgout0 to TRIGGER_LINE(2)\n");
 unittest(ni_route_to_register(rgout0_src1, TRIGGER_LINE(3), T) == 1,
   "validate indirect route through rgout0 to TRIGGER_LINE(3)\n");

 unittest(ni_route_to_register(brd0_src0, TRIGGER_LINE(4), T) ==
   BIT(6),
   "validate indirect route through brd0 to TRIGGER_LINE(4)\n");
 unittest(ni_route_to_register(brd0_src1, TRIGGER_LINE(4), T) ==
   BIT(6),
   "validate indirect route through brd0 to TRIGGER_LINE(4)\n");
 unittest(ni_route_to_register(brd1_src0, TRIGGER_LINE(3), T) ==
   BIT(6),
   "validate indirect route through brd1 to TRIGGER_LINE(3)\n");
 unittest(ni_route_to_register(brd1_src1, TRIGGER_LINE(3), T) ==
   BIT(6),
   "validate indirect route through brd1 to TRIGGER_LINE(3)\n");
 unittest(ni_route_to_register(brd2_src0, TRIGGER_LINE(2), T) ==
   BIT(6),
   "validate indirect route through brd2 to TRIGGER_LINE(2)\n");
 unittest(ni_route_to_register(brd2_src1, TRIGGER_LINE(2), T) ==
   BIT(6),
   "validate indirect route through brd2 to TRIGGER_LINE(2)\n");
 unittest(ni_route_to_register(brd3_src0, TRIGGER_LINE(1), T) ==
   BIT(6),
   "validate indirect route through brd3 to TRIGGER_LINE(1)\n");
 unittest(ni_route_to_register(brd3_src1, TRIGGER_LINE(1), T) ==
   BIT(6),
   "validate indirect route through brd3 to TRIGGER_LINE(1)\n");
}
