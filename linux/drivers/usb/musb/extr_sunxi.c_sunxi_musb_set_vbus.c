
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sunxi_glue {int work; int flags; } ;
struct musb {TYPE_3__* xceiv; TYPE_1__* controller; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int parent; } ;


 int OTG_STATE_A_WAIT_VRISE ;
 int SUNXI_MUSB_FL_VBUS_ON ;
 int clear_bit (int ,int *) ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void sunxi_musb_set_vbus(struct musb *musb, int is_on)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);

 if (is_on) {
  set_bit(SUNXI_MUSB_FL_VBUS_ON, &glue->flags);
  musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
 } else {
  clear_bit(SUNXI_MUSB_FL_VBUS_ON, &glue->flags);
 }

 schedule_work(&glue->work);
}
