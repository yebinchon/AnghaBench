
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int O (int) ;
 int init_pci_fake () ;
 TYPE_1__ private ;
 int route_is_valid (int ,int ,struct ni_route_tables const*) ;
 int unittest (int,char*) ;

void test_route_is_valid(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(!route_is_valid(O(0), O(0), T),
   "check for bad route 0-->0\n");
 unittest(route_is_valid(O(0), O(1), T),
   "validate first destination\n");
 unittest(route_is_valid(O(5), O(6), T),
   "validate middle destination\n");
 unittest(route_is_valid(O(8), O(9), T),
   "validate last destination\n");
}
