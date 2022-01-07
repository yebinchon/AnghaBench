
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pad {int dummy; } ;
struct tegra_xusb_hsic_pad {int dummy; } ;


 int kfree (struct tegra_xusb_hsic_pad*) ;
 struct tegra_xusb_hsic_pad* to_hsic_pad (struct tegra_xusb_pad*) ;

__attribute__((used)) static void tegra210_hsic_pad_remove(struct tegra_xusb_pad *pad)
{
 struct tegra_xusb_hsic_pad *hsic = to_hsic_pad(pad);

 kfree(hsic);
}
