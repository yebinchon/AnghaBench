
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pm8xxx_pin_data {unsigned int function; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_gpio {TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 struct pm8xxx_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pm8xxx_write_bank (struct pm8xxx_gpio*,struct pm8xxx_pin_data*,int,int) ;

__attribute__((used)) static int pm8xxx_pinmux_set_mux(struct pinctrl_dev *pctldev,
     unsigned function,
     unsigned group)
{
 struct pm8xxx_gpio *pctrl = pinctrl_dev_get_drvdata(pctldev);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[group].drv_data;
 u8 val;

 pin->function = function;
 val = pin->function << 1;

 pm8xxx_write_bank(pctrl, pin, 4, val);

 return 0;
}
