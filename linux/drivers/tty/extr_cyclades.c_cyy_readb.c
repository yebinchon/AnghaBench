
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


 int readb (scalar_t__) ;

__attribute__((used)) static u8 cyy_readb(struct cyclades_port *port, u32 reg)
{
 struct cyclades_card *card = port->card;

 return readb(port->u.cyy.base_addr + (reg << card->bus_index));
}
