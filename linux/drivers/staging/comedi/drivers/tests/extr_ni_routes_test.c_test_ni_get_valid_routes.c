
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 unsigned int O (int) ;
 int init_pci_fake () ;
 int ni_get_valid_routes (struct ni_route_tables const*,int,unsigned int*) ;
 TYPE_1__ private ;
 int unittest (int,char*) ;

void test_ni_get_valid_routes(void)
{
 const struct ni_route_tables *T = &private.routing_tables;
 unsigned int pair_data[2];

 init_pci_fake();
 unittest(ni_get_valid_routes(T, 0, ((void*)0)) == 57,
   "count all valid routes through ni_get_valid_routes\n");

 unittest(ni_get_valid_routes(T, 1, pair_data) == 1,
   "copied first valid route from ni_get_valid_routes\n");
 unittest(pair_data[0] == O(1),
   "source of first valid pair from ni_get_valid_routes\n");
 unittest(pair_data[1] == O(0),
   "destination of first valid pair from ni_get_valid_routes\n");
}
