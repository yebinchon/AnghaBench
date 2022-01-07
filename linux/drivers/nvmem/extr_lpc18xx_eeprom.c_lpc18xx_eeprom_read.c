
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc18xx_eeprom_dev {scalar_t__ val_bytes; scalar_t__ mem_base; } ;


 int LPC18XX_EEPROM_PWRDWN ;
 int LPC18XX_EEPROM_PWRDWN_NO ;
 int LPC18XX_EEPROM_PWRDWN_YES ;
 int lpc18xx_eeprom_writel (struct lpc18xx_eeprom_dev*,int ,int ) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lpc18xx_eeprom_read(void *context, unsigned int offset,
          void *val, size_t bytes)
{
 struct lpc18xx_eeprom_dev *eeprom = context;

 lpc18xx_eeprom_writel(eeprom, LPC18XX_EEPROM_PWRDWN,
         LPC18XX_EEPROM_PWRDWN_NO);


 usleep_range(100, 200);

 while (bytes) {
  *(u32 *)val = readl(eeprom->mem_base + offset);
  bytes -= eeprom->val_bytes;
  val += eeprom->val_bytes;
  offset += eeprom->val_bytes;
 }

 lpc18xx_eeprom_writel(eeprom, LPC18XX_EEPROM_PWRDWN,
         LPC18XX_EEPROM_PWRDWN_YES);

 return 0;
}
