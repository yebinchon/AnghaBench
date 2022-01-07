
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_glue {int work; int flags; struct musb* musb; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int parent; } ;


 int SUNXI_MUSB_FL_ENABLED ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void sunxi_musb_enable(struct musb *musb)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);

 glue->musb = musb;


 if (test_and_set_bit(SUNXI_MUSB_FL_ENABLED, &glue->flags))
  return;

 schedule_work(&glue->work);
}
