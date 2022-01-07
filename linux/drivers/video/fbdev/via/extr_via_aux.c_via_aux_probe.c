
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_aux_bus {int drivers; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct via_aux_bus* kmalloc (int,int ) ;
 int via_aux_ch7301_probe (struct via_aux_bus*) ;
 int via_aux_edid_probe (struct via_aux_bus*) ;
 int via_aux_sii164_probe (struct via_aux_bus*) ;
 int via_aux_vt1621_probe (struct via_aux_bus*) ;
 int via_aux_vt1622_probe (struct via_aux_bus*) ;
 int via_aux_vt1625_probe (struct via_aux_bus*) ;
 int via_aux_vt1631_probe (struct via_aux_bus*) ;
 int via_aux_vt1632_probe (struct via_aux_bus*) ;
 int via_aux_vt1636_probe (struct via_aux_bus*) ;

struct via_aux_bus *via_aux_probe(struct i2c_adapter *adap)
{
 struct via_aux_bus *bus;

 if (!adap)
  return ((void*)0);

 bus = kmalloc(sizeof(*bus), GFP_KERNEL);
 if (!bus)
  return ((void*)0);

 bus->adap = adap;
 INIT_LIST_HEAD(&bus->drivers);

 via_aux_edid_probe(bus);
 via_aux_vt1636_probe(bus);
 via_aux_vt1632_probe(bus);
 via_aux_vt1631_probe(bus);
 via_aux_vt1625_probe(bus);
 via_aux_vt1622_probe(bus);
 via_aux_vt1621_probe(bus);
 via_aux_sii164_probe(bus);
 via_aux_ch7301_probe(bus);

 return bus;
}
