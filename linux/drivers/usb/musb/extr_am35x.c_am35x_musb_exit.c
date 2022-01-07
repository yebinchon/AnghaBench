
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_musb_board_data {int (* set_phy_power ) (int ) ;} ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {int xceiv; int dev_timer; struct device* controller; } ;
struct device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct musb_hdrc_platform_data* dev_get_platdata (struct device*) ;
 int stub1 (int ) ;
 int usb_put_phy (int ) ;

__attribute__((used)) static int am35x_musb_exit(struct musb *musb)
{
 struct device *dev = musb->controller;
 struct musb_hdrc_platform_data *plat = dev_get_platdata(dev);
 struct omap_musb_board_data *data = plat->board_data;

 del_timer_sync(&musb->dev_timer);


 if (data->set_phy_power)
  data->set_phy_power(0);

 usb_put_phy(musb->xceiv);

 return 0;
}
