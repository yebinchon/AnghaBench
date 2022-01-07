
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_usb2_phy_instance {int dummy; } ;


 int exynos4210_isol (struct samsung_usb2_phy_instance*,int ) ;
 int exynos4210_phy_pwr (struct samsung_usb2_phy_instance*,int) ;

__attribute__((used)) static int exynos4210_power_on(struct samsung_usb2_phy_instance *inst)
{

 exynos4210_phy_pwr(inst, 1);
 exynos4210_isol(inst, 0);

 return 0;
}
