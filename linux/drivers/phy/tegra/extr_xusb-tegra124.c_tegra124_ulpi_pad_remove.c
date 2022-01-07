
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_ulpi_pad {int dummy; } ;
struct tegra_xusb_pad {int dummy; } ;


 int kfree (struct tegra_xusb_ulpi_pad*) ;
 struct tegra_xusb_ulpi_pad* to_ulpi_pad (struct tegra_xusb_pad*) ;

__attribute__((used)) static void tegra124_ulpi_pad_remove(struct tegra_xusb_pad *pad)
{
 struct tegra_xusb_ulpi_pad *ulpi = to_ulpi_pad(pad);

 kfree(ulpi);
}
