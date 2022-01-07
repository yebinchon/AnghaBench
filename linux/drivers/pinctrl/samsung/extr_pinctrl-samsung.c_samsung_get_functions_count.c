
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pinctrl_drv_data {int nr_functions; } ;
struct pinctrl_dev {int dummy; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int samsung_get_functions_count(struct pinctrl_dev *pctldev)
{
 struct samsung_pinctrl_drv_data *drvdata;

 drvdata = pinctrl_dev_get_drvdata(pctldev);
 return drvdata->nr_functions;
}
