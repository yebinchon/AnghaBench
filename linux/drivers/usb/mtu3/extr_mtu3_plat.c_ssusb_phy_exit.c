
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int num_phys; int * phys; } ;


 int phy_exit (int ) ;

__attribute__((used)) static int ssusb_phy_exit(struct ssusb_mtk *ssusb)
{
 int i;

 for (i = 0; i < ssusb->num_phys; i++)
  phy_exit(ssusb->phys[i]);

 return 0;
}
