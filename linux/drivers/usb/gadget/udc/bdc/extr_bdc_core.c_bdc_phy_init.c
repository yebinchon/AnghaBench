
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdc {int num_phys; int * phys; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int bdc_phy_init(struct bdc *bdc)
{
 int phy_num;
 int ret;

 for (phy_num = 0; phy_num < bdc->num_phys; phy_num++) {
  ret = phy_init(bdc->phys[phy_num]);
  if (ret)
   goto err_exit_phy;
  ret = phy_power_on(bdc->phys[phy_num]);
  if (ret) {
   phy_exit(bdc->phys[phy_num]);
   goto err_exit_phy;
  }
 }

 return 0;

err_exit_phy:
 while (--phy_num >= 0) {
  phy_power_off(bdc->phys[phy_num]);
  phy_exit(bdc->phys[phy_num]);
 }

 return ret;
}
