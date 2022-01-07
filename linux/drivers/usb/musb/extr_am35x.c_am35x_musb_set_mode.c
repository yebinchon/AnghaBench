
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_musb_board_data {int (* set_mode ) (int ) ;} ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {struct device* controller; } ;
struct device {int dummy; } ;


 int EIO ;
 struct musb_hdrc_platform_data* dev_get_platdata (struct device*) ;
 int stub1 (int ) ;

__attribute__((used)) static int am35x_musb_set_mode(struct musb *musb, u8 musb_mode)
{
 struct device *dev = musb->controller;
 struct musb_hdrc_platform_data *plat = dev_get_platdata(dev);
 struct omap_musb_board_data *data = plat->board_data;
 int retval = 0;

 if (data->set_mode)
  data->set_mode(musb_mode);
 else
  retval = -EIO;

 return retval;
}
