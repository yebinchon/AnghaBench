
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb {int is_initialized; TYPE_1__* controller; } ;
struct da8xx_glue {int phy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_2__ {int parent; } ;


 int EINVAL ;



 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 int PHY_MODE_USB_OTG ;
 struct da8xx_glue* dev_get_drvdata (int ) ;
 int phy_set_mode (int ,int) ;

__attribute__((used)) static int da8xx_musb_set_mode(struct musb *musb, u8 musb_mode)
{
 struct da8xx_glue *glue = dev_get_drvdata(musb->controller->parent);
 enum phy_mode phy_mode;





 if (!musb->is_initialized)
  return phy_set_mode(glue->phy, PHY_MODE_USB_OTG);

 switch (musb_mode) {
 case 130:
  phy_mode = PHY_MODE_USB_HOST;
  break;
 case 128:
  phy_mode = PHY_MODE_USB_DEVICE;
  break;
 case 129:
  phy_mode = PHY_MODE_USB_OTG;
  break;
 default:
  return -EINVAL;
 }

 return phy_set_mode(glue->phy, phy_mode);
}
