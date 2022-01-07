
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct usbhs_priv {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EIO ;
 int SUSPM ;
 int SUSPMODE ;
 int SYSCFG ;
 int UCKSEL ;
 int UPLLE ;
 int dev_err (int ,char*) ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;
 int usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int usbhs_rza1_hardware_init(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);
 struct device_node *usb_x1_clk, *extal_clk;
 u32 freq_usb = 0, freq_extal = 0;


 usb_x1_clk = of_find_node_by_name(((void*)0), "usb_x1");
 extal_clk = of_find_node_by_name(((void*)0), "extal");
 of_property_read_u32(usb_x1_clk, "clock-frequency", &freq_usb);
 of_property_read_u32(extal_clk, "clock-frequency", &freq_extal);
 if (freq_usb == 0) {
  if (freq_extal == 12000000) {

   usbhs_bset(priv, SYSCFG, UCKSEL, UCKSEL);
  } else {
   dev_err(usbhs_priv_to_dev(priv), "A 48MHz USB clock or 12MHz main clock is required.\n");
   return -EIO;
  }
 }


 usbhs_bset(priv, SYSCFG, UPLLE, UPLLE);
 usleep_range(1000, 2000);
 usbhs_bset(priv, SUSPMODE, SUSPM, SUSPM);

 return 0;
}
