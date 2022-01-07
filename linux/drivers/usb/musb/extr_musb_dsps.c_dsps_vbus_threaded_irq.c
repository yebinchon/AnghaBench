
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;
struct dsps_glue {int dev; int musb; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int ,char*) ;
 int dsps_mod_timer (struct dsps_glue*,int ) ;
 struct musb* platform_get_drvdata (int ) ;

__attribute__((used)) static irqreturn_t dsps_vbus_threaded_irq(int irq, void *priv)
{
 struct dsps_glue *glue = priv;
 struct musb *musb = platform_get_drvdata(glue->musb);

 if (!musb)
  return IRQ_NONE;

 dev_dbg(glue->dev, "VBUS interrupt\n");
 dsps_mod_timer(glue, 0);

 return IRQ_HANDLED;
}
