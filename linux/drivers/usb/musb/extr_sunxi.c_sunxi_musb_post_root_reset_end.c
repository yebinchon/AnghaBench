
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_glue {int phy; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int parent; } ;


 struct sunxi_glue* dev_get_drvdata (int ) ;
 int sun4i_usb_phy_set_squelch_detect (int ,int) ;

__attribute__((used)) static void sunxi_musb_post_root_reset_end(struct musb *musb)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);

 sun4i_usb_phy_set_squelch_detect(glue->phy, 1);
}
