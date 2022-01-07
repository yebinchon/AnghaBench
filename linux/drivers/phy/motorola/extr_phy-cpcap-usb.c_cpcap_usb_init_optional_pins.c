
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_phy_ddata {int * pins_uart; int * pins; int dev; int * pins_utmi; int * pins_ulpi; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_info (int ,char*,...) ;
 int * devm_pinctrl_get (int ) ;
 void* pinctrl_lookup_state (int *,char*) ;
 int pinctrl_select_state (int *,int *) ;

__attribute__((used)) static int cpcap_usb_init_optional_pins(struct cpcap_phy_ddata *ddata)
{
 ddata->pins = devm_pinctrl_get(ddata->dev);
 if (IS_ERR(ddata->pins)) {
  dev_info(ddata->dev, "default pins not configured: %ld\n",
    PTR_ERR(ddata->pins));
  ddata->pins = ((void*)0);

  return 0;
 }

 ddata->pins_ulpi = pinctrl_lookup_state(ddata->pins, "ulpi");
 if (IS_ERR(ddata->pins_ulpi)) {
  dev_info(ddata->dev, "ulpi pins not configured\n");
  ddata->pins_ulpi = ((void*)0);
 }

 ddata->pins_utmi = pinctrl_lookup_state(ddata->pins, "utmi");
 if (IS_ERR(ddata->pins_utmi)) {
  dev_info(ddata->dev, "utmi pins not configured\n");
  ddata->pins_utmi = ((void*)0);
 }

 ddata->pins_uart = pinctrl_lookup_state(ddata->pins, "uart");
 if (IS_ERR(ddata->pins_uart)) {
  dev_info(ddata->dev, "uart pins not configured\n");
  ddata->pins_uart = ((void*)0);
 }

 if (ddata->pins_uart)
  return pinctrl_select_state(ddata->pins, ddata->pins_uart);

 return 0;
}
