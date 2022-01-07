
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wd719x {int dummy; } ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_in; struct wd719x* data; } ;


 int WD719X_EE_CLK ;
 int WD719X_EE_CS ;
 int WD719X_EE_DI ;
 int WD719X_PCI_GPIO_DATA ;
 int wd719x_writeb (struct wd719x*,int ,int ) ;

__attribute__((used)) static void wd719x_eeprom_reg_write(struct eeprom_93cx6 *eeprom)
{
 struct wd719x *wd = eeprom->data;
 u8 reg = 0;

 if (eeprom->reg_data_in)
  reg |= WD719X_EE_DI;
 if (eeprom->reg_data_clock)
  reg |= WD719X_EE_CLK;
 if (eeprom->reg_chip_select)
  reg |= WD719X_EE_CS;

 wd719x_writeb(wd, WD719X_PCI_GPIO_DATA, reg);
}
