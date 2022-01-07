
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_sata_pad {scalar_t__ enable; int pll; int rst; } ;
struct tegra_xusb_padctl {int lock; int sata; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_control_assert (int ) ;
 struct tegra_xusb_sata_pad* to_sata_pad (int ) ;

__attribute__((used)) static void tegra210_sata_uphy_disable(struct tegra_xusb_padctl *padctl)
{
 struct tegra_xusb_sata_pad *sata = to_sata_pad(padctl->sata);

 mutex_lock(&padctl->lock);

 if (WARN_ON(sata->enable == 0))
  goto unlock;

 if (--sata->enable > 0)
  goto unlock;

 reset_control_assert(sata->rst);
 clk_disable_unprepare(sata->pll);

unlock:
 mutex_unlock(&padctl->lock);
}
