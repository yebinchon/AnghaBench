
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int rt2800_read_eeprom_efuse (struct rt2x00_dev*) ;

__attribute__((used)) static inline int rt2800pci_read_eeprom_efuse(struct rt2x00_dev *rt2x00dev)
{
 return rt2800_read_eeprom_efuse(rt2x00dev);
}
