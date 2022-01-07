
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_usb2_phy_instance {int dummy; } ;


 int s5pv210_isol (struct samsung_usb2_phy_instance*,int ) ;
 int s5pv210_phy_pwr (struct samsung_usb2_phy_instance*,int) ;

__attribute__((used)) static int s5pv210_power_on(struct samsung_usb2_phy_instance *inst)
{
 s5pv210_isol(inst, 0);
 s5pv210_phy_pwr(inst, 1);

 return 0;
}
