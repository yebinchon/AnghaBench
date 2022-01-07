
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {int xceiv; int dev_timer; TYPE_1__* controller; } ;
struct da8xx_glue {int clk; int phy; } ;
struct TYPE_2__ {int parent; } ;


 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 struct da8xx_glue* dev_get_drvdata (int ) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int usb_put_phy (int ) ;

__attribute__((used)) static int da8xx_musb_exit(struct musb *musb)
{
 struct da8xx_glue *glue = dev_get_drvdata(musb->controller->parent);

 del_timer_sync(&musb->dev_timer);

 phy_power_off(glue->phy);
 phy_exit(glue->phy);
 clk_disable_unprepare(glue->clk);

 usb_put_phy(musb->xceiv);

 return 0;
}
