
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int W1_DS2780_RECALL_DATA ;
 int w1_ds2780_eeprom_cmd (struct device*,int,int ) ;

__attribute__((used)) static inline int ds2780_recall_eeprom(struct device *dev, int addr)
{
 return w1_ds2780_eeprom_cmd(dev, addr, W1_DS2780_RECALL_DATA);
}
