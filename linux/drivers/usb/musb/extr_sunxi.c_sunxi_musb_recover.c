
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_glue {int work; int flags; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int parent; } ;


 int SUNXI_MUSB_FL_PHY_MODE_PEND ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int sunxi_musb_recover(struct musb *musb)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);





 set_bit(SUNXI_MUSB_FL_PHY_MODE_PEND, &glue->flags);
 schedule_work(&glue->work);

 return 0;
}
