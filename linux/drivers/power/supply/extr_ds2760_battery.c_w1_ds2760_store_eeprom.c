
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int W1_DS2760_COPY_DATA ;
 int w1_ds2760_eeprom_cmd (struct device*,int,int ) ;

__attribute__((used)) static int w1_ds2760_store_eeprom(struct device *dev, int addr)
{
 return w1_ds2760_eeprom_cmd(dev, addr, W1_DS2760_COPY_DATA);
}
