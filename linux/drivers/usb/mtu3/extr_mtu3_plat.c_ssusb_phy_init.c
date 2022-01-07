
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int num_phys; int * phys; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;

__attribute__((used)) static int ssusb_phy_init(struct ssusb_mtk *ssusb)
{
 int i;
 int ret;

 for (i = 0; i < ssusb->num_phys; i++) {
  ret = phy_init(ssusb->phys[i]);
  if (ret)
   goto exit_phy;
 }
 return 0;

exit_phy:
 for (; i > 0; i--)
  phy_exit(ssusb->phys[i - 1]);

 return ret;
}
