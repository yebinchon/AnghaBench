
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl {int dev; } ;
struct TYPE_2__ {int name; } ;


 int MX1_PUEN ;
 int dev_dbg (int ,char*,int ) ;
 int imx1_write_bit (struct imx1_pinctrl*,unsigned int,unsigned long,int ) ;
 TYPE_1__* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int imx1_pinconf_set(struct pinctrl_dev *pctldev,
        unsigned pin_id, unsigned long *configs,
        unsigned num_configs)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 int i;

 for (i = 0; i != num_configs; ++i) {
  imx1_write_bit(ipctl, pin_id, configs[i] & 0x01, MX1_PUEN);

  dev_dbg(ipctl->dev, "pinconf set pullup pin %s\n",
   pin_desc_get(pctldev, pin_id)->name);
 }

 return 0;
}
