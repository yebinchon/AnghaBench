
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ti_iodelay_reg_data {scalar_t__ reg_start_offset; TYPE_1__* regmap_config; } ;
struct TYPE_4__ {int npins; struct pinctrl_pin_desc* pins; } ;
struct ti_iodelay_device {struct pinctrl_pin_desc* pa; TYPE_2__ desc; struct ti_iodelay_reg_data* reg_data; } ;
struct pinctrl_pin_desc {int number; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int max_register; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int) ;
 struct pinctrl_pin_desc* devm_kcalloc (struct device*,int,int,int ) ;
 int ti_iodelay_offset_to_pin (struct ti_iodelay_device*,int ) ;

__attribute__((used)) static int ti_iodelay_alloc_pins(struct device *dev,
     struct ti_iodelay_device *iod, u32 base_phy)
{
 const struct ti_iodelay_reg_data *r = iod->reg_data;
 struct pinctrl_pin_desc *pin;
 u32 phy_reg;
 int nr_pins, i;

 nr_pins = ti_iodelay_offset_to_pin(iod, r->regmap_config->max_register);
 dev_dbg(dev, "Allocating %i pins\n", nr_pins);

 iod->pa = devm_kcalloc(dev, nr_pins, sizeof(*iod->pa), GFP_KERNEL);
 if (!iod->pa)
  return -ENOMEM;

 iod->desc.pins = iod->pa;
 iod->desc.npins = nr_pins;

 phy_reg = r->reg_start_offset + base_phy;

 for (i = 0; i < nr_pins; i++, phy_reg += 4) {
  pin = &iod->pa[i];
  pin->number = i;
 }

 return 0;
}
