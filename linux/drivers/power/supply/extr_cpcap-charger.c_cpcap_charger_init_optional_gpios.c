
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_charger_ddata {int ** gpio; int dev; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_info (int ,char*,int,int ) ;
 int * devm_gpiod_get_index (int ,char*,int,int ) ;

__attribute__((used)) static void cpcap_charger_init_optional_gpios(struct cpcap_charger_ddata *ddata)
{
 int i;

 for (i = 0; i < 2; i++) {
  ddata->gpio[i] = devm_gpiod_get_index(ddata->dev, "mode",
            i, GPIOD_OUT_HIGH);
  if (IS_ERR(ddata->gpio[i])) {
   dev_info(ddata->dev, "no mode change GPIO%i: %li\n",
     i, PTR_ERR(ddata->gpio[i]));
   ddata->gpio[i] = ((void*)0);
  }
 }
}
