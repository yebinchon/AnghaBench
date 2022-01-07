
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7621_pcie {int perst; } ;


 int PERST_DELAY_US ;
 int gpiod_set_value (int ,int ) ;
 int mdelay (int ) ;

__attribute__((used)) static inline void mt7621_perst_gpio_pcie_assert(struct mt7621_pcie *pcie)
{
 gpiod_set_value(pcie->perst, 0);
 mdelay(PERST_DELAY_US);
}
