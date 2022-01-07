
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int ENODEV ;
 int RV3029_ONOFF_CTRL ;
 int RV3029_ONOFF_CTRL_EERE ;
 int RV3029_STATUS_VLOW1 ;
 int RV3029_STATUS_VLOW2 ;
 int dev_err (struct device*,char*) ;
 int rv3029_eeprom_busywait (struct device*) ;
 int rv3029_eeprom_exit (struct device*) ;
 int rv3029_get_sr (struct device*,int*) ;
 int rv3029_set_sr (struct device*,int) ;
 int rv3029_update_bits (struct device*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rv3029_eeprom_enter(struct device *dev)
{
 int ret;
 u8 sr;


 ret = rv3029_get_sr(dev, &sr);
 if (ret < 0)
  return ret;
 if (sr & (RV3029_STATUS_VLOW1 | RV3029_STATUS_VLOW2)) {



  sr &= ~RV3029_STATUS_VLOW1;
  sr &= ~RV3029_STATUS_VLOW2;
  ret = rv3029_set_sr(dev, sr);
  if (ret < 0)
   return ret;
  usleep_range(1000, 10000);
  ret = rv3029_get_sr(dev, &sr);
  if (ret < 0)
   return ret;
  if (sr & (RV3029_STATUS_VLOW1 | RV3029_STATUS_VLOW2)) {
   dev_err(dev,
    "Supply voltage is too low to safely access the EEPROM.\n");
   return -ENODEV;
  }
 }


 ret = rv3029_update_bits(dev, RV3029_ONOFF_CTRL, RV3029_ONOFF_CTRL_EERE,
     0);
 if (ret < 0)
  return ret;


 ret = rv3029_eeprom_busywait(dev);
 if (ret < 0)
  rv3029_eeprom_exit(dev);

 return ret;
}
