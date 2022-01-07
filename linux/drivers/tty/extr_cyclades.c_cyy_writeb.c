
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ base_addr; } ;
struct TYPE_4__ {TYPE_1__ cyy; } ;
struct cyclades_port {TYPE_2__ u; struct cyclades_card* card; } ;
struct cyclades_card {int bus_index; } ;


 int cy_writeb (scalar_t__,int ) ;

__attribute__((used)) static void cyy_writeb(struct cyclades_port *port, u32 reg, u8 val)
{
 struct cyclades_card *card = port->card;

 cy_writeb(port->u.cyy.base_addr + (reg << card->bus_index), val);
}
