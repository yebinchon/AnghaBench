
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
 int route_register_is_valid (int,int ,struct ni_route_tables const*) ;
 int unittest (int,char*) ;

void test_route_register_is_valid(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(route_register_is_valid(4, O(4), T) == 0,
   "check for bad source 4-->4\n");
 unittest(route_register_is_valid(0, O(1), T) == 1,
   "find first source\n");
 unittest(route_register_is_valid(4, O(6), T) == 1,
   "find middle source\n");
 unittest(route_register_is_valid(9, O(8), T) == 1,
   "find last source");
}
