
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2430_glue {int omap_musb_mailbox_work; } ;
struct musb {int * phy; struct device* controller; } ;
struct device {int parent; } ;


 int cancel_work_sync (int *) ;
 struct omap2430_glue* dev_get_drvdata (int ) ;
 int omap2430_low_level_exit (struct musb*) ;
 int phy_exit (int *) ;
 int phy_power_off (int *) ;

__attribute__((used)) static int omap2430_musb_exit(struct musb *musb)
{
 struct device *dev = musb->controller;
 struct omap2430_glue *glue = dev_get_drvdata(dev->parent);

 omap2430_low_level_exit(musb);
 phy_power_off(musb->phy);
 phy_exit(musb->phy);
 musb->phy = ((void*)0);
 cancel_work_sync(&glue->omap_musb_mailbox_work);

 return 0;
}
