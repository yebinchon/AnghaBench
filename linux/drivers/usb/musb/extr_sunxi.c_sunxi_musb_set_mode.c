
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sunxi_glue {int phy_mode; int work; int flags; } ;
struct musb {int const port_mode; int port1_status; TYPE_1__* controller; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_2__ {int parent; } ;


 int EINVAL ;



 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 int PHY_MODE_USB_OTG ;
 int SUNXI_MUSB_FL_PHY_MODE_PEND ;
 int USB_PORT_STAT_ENABLE ;
 int dev_err (int ,char*) ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int musb_root_disconnect (struct musb*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int sunxi_musb_set_mode(struct musb *musb, u8 mode)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);
 enum phy_mode new_mode;

 switch (mode) {
 case 130:
  new_mode = PHY_MODE_USB_HOST;
  break;
 case 128:
  new_mode = PHY_MODE_USB_DEVICE;
  break;
 case 129:
  new_mode = PHY_MODE_USB_OTG;
  break;
 default:
  dev_err(musb->controller->parent,
   "Error requested mode not supported by this kernel\n");
  return -EINVAL;
 }

 if (glue->phy_mode == new_mode)
  return 0;

 if (musb->port_mode != 129) {
  dev_err(musb->controller->parent,
   "Error changing modes is only supported in dual role mode\n");
  return -EINVAL;
 }

 if (musb->port1_status & USB_PORT_STAT_ENABLE)
  musb_root_disconnect(musb);





 glue->phy_mode = new_mode;
 set_bit(SUNXI_MUSB_FL_PHY_MODE_PEND, &glue->flags);
 schedule_work(&glue->work);

 return 0;
}
