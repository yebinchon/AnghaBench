
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int EINVAL ;
 int O (int) ;
 int init_pci_fake () ;
 int ni_find_route_source (int,int ,struct ni_route_tables const*) ;
 TYPE_1__ private ;
 int unittest (int,char*) ;

void test_ni_find_route_source(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(ni_find_route_source(4, O(4), T) == -EINVAL,
   "check for bad source 4-->4\n");
 unittest(ni_find_route_source(0, O(1), T) == O(0),
   "find first source\n");
 unittest(ni_find_route_source(4, O(6), T) == O(4),
   "find middle source\n");
 unittest(ni_find_route_source(9, O(8), T) == O(9),
   "find last source");
 unittest(ni_find_route_source(8, O(9), T) == O(8),
   "find invalid source (without checking device routes)\n");
}
