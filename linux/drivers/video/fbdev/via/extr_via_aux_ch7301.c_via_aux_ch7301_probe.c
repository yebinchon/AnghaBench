
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_aux_bus {int dummy; } ;


 int probe (struct via_aux_bus*,int) ;

void via_aux_ch7301_probe(struct via_aux_bus *bus)
{
 probe(bus, 0x75);
 probe(bus, 0x76);
}
