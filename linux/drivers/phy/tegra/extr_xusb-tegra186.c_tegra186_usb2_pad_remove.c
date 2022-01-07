
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_usb2_pad {int dummy; } ;
struct tegra_xusb_pad {int dummy; } ;


 int kfree (struct tegra_xusb_usb2_pad*) ;
 struct tegra_xusb_usb2_pad* to_usb2_pad (struct tegra_xusb_pad*) ;

__attribute__((used)) static void tegra186_usb2_pad_remove(struct tegra_xusb_pad *pad)
{
 struct tegra_xusb_usb2_pad *usb2 = to_usb2_pad(pad);

 kfree(usb2);
}
