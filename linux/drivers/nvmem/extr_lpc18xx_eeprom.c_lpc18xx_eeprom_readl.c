
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc18xx_eeprom_dev {scalar_t__ reg_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 lpc18xx_eeprom_readl(struct lpc18xx_eeprom_dev *eeprom,
           u32 reg)
{
 return readl(eeprom->reg_base + reg);
}
