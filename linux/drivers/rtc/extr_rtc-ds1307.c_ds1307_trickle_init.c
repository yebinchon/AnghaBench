
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ds1307 {int dev; } ;
struct chip_desc {int (* do_trickle_setup ) (struct ds1307*,int ,int) ;} ;


 scalar_t__ device_property_read_bool (int ,char*) ;
 scalar_t__ device_property_read_u32 (int ,char*,int *) ;
 int stub1 (struct ds1307*,int ,int) ;

__attribute__((used)) static u8 ds1307_trickle_init(struct ds1307 *ds1307,
         const struct chip_desc *chip)
{
 u32 ohms;
 bool diode = 1;

 if (!chip->do_trickle_setup)
  return 0;

 if (device_property_read_u32(ds1307->dev, "trickle-resistor-ohms",
         &ohms))
  return 0;

 if (device_property_read_bool(ds1307->dev, "trickle-diode-disable"))
  diode = 0;

 return chip->do_trickle_setup(ds1307, ohms, diode);
}
