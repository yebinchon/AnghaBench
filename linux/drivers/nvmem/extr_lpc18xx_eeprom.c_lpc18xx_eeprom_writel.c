
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc18xx_eeprom_dev {scalar_t__ reg_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void lpc18xx_eeprom_writel(struct lpc18xx_eeprom_dev *eeprom,
      u32 reg, u32 val)
{
 writel(val, eeprom->reg_base + reg);
}
