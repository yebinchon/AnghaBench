
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wd719x {int dummy; } ;
struct eeprom_93cx6 {int reg_data_out; struct wd719x* data; } ;


 int WD719X_EE_DO ;
 int WD719X_PCI_GPIO_DATA ;
 int wd719x_readb (struct wd719x*,int ) ;

__attribute__((used)) static void wd719x_eeprom_reg_read(struct eeprom_93cx6 *eeprom)
{
 struct wd719x *wd = eeprom->data;
 u8 reg = wd719x_readb(wd, WD719X_PCI_GPIO_DATA);

 eeprom->reg_data_out = reg & WD719X_EE_DO;
}
