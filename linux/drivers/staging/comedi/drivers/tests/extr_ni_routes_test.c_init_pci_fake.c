
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int * valid_routes; int * route_values; } ;
struct TYPE_5__ {TYPE_1__ routing_tables; } ;


 int DR ;
 int ** RV ;
 TYPE_3__ board ;
 int init_private () ;
 int pci_fake ;
 TYPE_2__ private ;

__attribute__((used)) static void init_pci_fake(void)
{
 board.name = pci_fake;
 init_private();
 private.routing_tables.route_values = &RV[0][0];
 private.routing_tables.valid_routes = &DR;
}
