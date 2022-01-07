
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_aux_bus {int dummy; } ;


 int probe (struct via_aux_bus*,int) ;

void via_aux_vt1622_probe(struct via_aux_bus *bus)
{
 probe(bus, 0x20);
 probe(bus, 0x21);
}
