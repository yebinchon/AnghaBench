
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {scalar_t__ eeprom; } ;



__attribute__((used)) static inline u8 rt2x00_eeprom_byte(struct rt2x00_dev *rt2x00dev,
        const unsigned int byte)
{
 return *(((u8 *)rt2x00dev->eeprom) + byte);
}
