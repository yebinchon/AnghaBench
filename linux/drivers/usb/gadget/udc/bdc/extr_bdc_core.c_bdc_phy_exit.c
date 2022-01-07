
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdc {int num_phys; int * phys; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void bdc_phy_exit(struct bdc *bdc)
{
 int phy_num;

 for (phy_num = 0; phy_num < bdc->num_phys; phy_num++) {
  phy_power_off(bdc->phys[phy_num]);
  phy_exit(bdc->phys[phy_num]);
 }
}
