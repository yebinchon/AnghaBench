
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {unsigned int num_phys; int * phys; } ;


 int phy_power_off (int ) ;

__attribute__((used)) static void ssusb_phy_power_off(struct ssusb_mtk *ssusb)
{
 unsigned int i;

 for (i = 0; i < ssusb->num_phys; i++)
  phy_power_off(ssusb->phys[i]);
}
