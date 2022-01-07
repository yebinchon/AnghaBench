
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int lock; } ;


 int __tegra_xusb_remove_ports (struct tegra_xusb_padctl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void tegra_xusb_remove_ports(struct tegra_xusb_padctl *padctl)
{
 mutex_lock(&padctl->lock);
 __tegra_xusb_remove_ports(padctl);
 mutex_unlock(&padctl->lock);
}
