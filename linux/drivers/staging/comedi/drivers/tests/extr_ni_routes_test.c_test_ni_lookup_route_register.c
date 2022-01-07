
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int EINVAL ;
 int NI_RGOUT0 ;
 int NI_RTSI_BRD (int ) ;
 int O (int) ;
 int TRIGGER_LINE (int) ;
 int brd0_src0 ;
 int brd0_src1 ;
 int init_pci_fake () ;
 int ni_lookup_route_register (int ,int ,struct ni_route_tables const*) ;
 TYPE_1__ private ;
 int rgout0_src0 ;
 int rgout0_src1 ;
 int unittest (int,char*) ;

void test_ni_lookup_route_register(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(ni_lookup_route_register(O(0), O(0), T) == -EINVAL,
   "check for bad route 0-->0\n");
 unittest(ni_lookup_route_register(O(1), O(0), T) == 1,
   "validate first destination\n");
 unittest(ni_lookup_route_register(O(6), O(5), T) == 6,
   "validate middle destination\n");
 unittest(ni_lookup_route_register(O(8), O(9), T) == 8,
   "validate last destination\n");
 unittest(ni_lookup_route_register(O(10), O(9), T) == -EINVAL,
   "lookup invalid destination\n");

 unittest(ni_lookup_route_register(rgout0_src0, TRIGGER_LINE(0), T) ==
   -EINVAL,
   "rgout0_src0: no direct lookup of indirect route\n");
 unittest(ni_lookup_route_register(rgout0_src0, NI_RGOUT0, T) == 0,
   "rgout0_src0: lookup indirect route register\n");
 unittest(ni_lookup_route_register(rgout0_src1, TRIGGER_LINE(2), T) ==
   -EINVAL,
   "rgout0_src1: no direct lookup of indirect route\n");
 unittest(ni_lookup_route_register(rgout0_src1, NI_RGOUT0, T) == 1,
   "rgout0_src1: lookup indirect route register\n");

 unittest(ni_lookup_route_register(brd0_src0, TRIGGER_LINE(4), T) ==
   -EINVAL,
   "brd0_src0: no direct lookup of indirect route\n");
 unittest(ni_lookup_route_register(brd0_src0, NI_RTSI_BRD(0), T) == 0,
   "brd0_src0: lookup indirect route register\n");
 unittest(ni_lookup_route_register(brd0_src1, TRIGGER_LINE(4), T) ==
   -EINVAL,
   "brd0_src1: no direct lookup of indirect route\n");
 unittest(ni_lookup_route_register(brd0_src1, NI_RTSI_BRD(0), T) == 1,
   "brd0_src1: lookup indirect route register\n");
}
