
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl {int dummy; } ;


 int MX1_PUEN ;
 unsigned long imx1_read_bit (struct imx1_pinctrl*,unsigned int,int ) ;
 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int imx1_pinconf_get(struct pinctrl_dev *pctldev,
        unsigned pin_id, unsigned long *config)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);

 *config = imx1_read_bit(ipctl, pin_id, MX1_PUEN);

 return 0;
}
