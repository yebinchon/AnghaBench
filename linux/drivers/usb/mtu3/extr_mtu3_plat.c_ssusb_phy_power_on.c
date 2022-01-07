
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int num_phys; int * phys; } ;


 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int ssusb_phy_power_on(struct ssusb_mtk *ssusb)
{
 int i;
 int ret;

 for (i = 0; i < ssusb->num_phys; i++) {
  ret = phy_power_on(ssusb->phys[i]);
  if (ret)
   goto power_off_phy;
 }
 return 0;

power_off_phy:
 for (; i > 0; i--)
  phy_power_off(ssusb->phys[i - 1]);

 return ret;
}
