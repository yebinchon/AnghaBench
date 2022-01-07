
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int RV3029_STATUS_EEBUSY ;
 int dev_err (struct device*,char*) ;
 int rv3029_get_sr (struct device*,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rv3029_eeprom_busywait(struct device *dev)
{
 int i, ret;
 u8 sr;

 for (i = 100; i > 0; i--) {
  ret = rv3029_get_sr(dev, &sr);
  if (ret < 0)
   break;
  if (!(sr & RV3029_STATUS_EEBUSY))
   break;
  usleep_range(1000, 10000);
 }
 if (i <= 0) {
  dev_err(dev, "EEPROM busy wait timeout.\n");
  return -ETIMEDOUT;
 }

 return ret;
}
