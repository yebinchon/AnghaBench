
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct via_aux_bus {int dummy; } ;


 int probe (struct via_aux_bus*,int) ;

void via_aux_vt1632_probe(struct via_aux_bus *bus)
{
 u8 i;

 for (i = 0x08; i <= 0x0F; i++)
  probe(bus, i);
}
