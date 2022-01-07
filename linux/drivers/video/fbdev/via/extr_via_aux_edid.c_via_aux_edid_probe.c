
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_aux_drv {int addr; int get_preferred_mode; int cleanup; int name; struct via_aux_bus* bus; } ;
struct via_aux_bus {int dummy; } ;


 int cleanup ;
 int get_preferred_mode ;
 int name ;
 int query_edid (struct via_aux_drv*) ;
 int via_aux_add (struct via_aux_drv*) ;

void via_aux_edid_probe(struct via_aux_bus *bus)
{
 struct via_aux_drv drv = {
  .bus = bus,
  .addr = 0x50,
  .name = name,
  .cleanup = cleanup,
  .get_preferred_mode = get_preferred_mode};

 query_edid(&drv);


 via_aux_add(&drv);
}
