
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int init_pci_fake () ;
 int ni_count_valid_routes (struct ni_route_tables const*) ;
 TYPE_1__ private ;
 int unittest (int,char*) ;

void test_ni_count_valid_routes(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(ni_count_valid_routes(T) == 57, "count all valid routes\n");
}
