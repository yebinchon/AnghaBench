
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int RV3029_ONOFF_CTRL ;
 int RV3029_ONOFF_CTRL_EERE ;
 int rv3029_update_bits (struct device*,int ,int ,int ) ;

__attribute__((used)) static int rv3029_eeprom_exit(struct device *dev)
{

 return rv3029_update_bits(dev, RV3029_ONOFF_CTRL,
      RV3029_ONOFF_CTRL_EERE,
      RV3029_ONOFF_CTRL_EERE);
}
