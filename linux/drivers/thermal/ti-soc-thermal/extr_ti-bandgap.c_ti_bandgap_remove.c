
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_bandgap {int tshut_gpio; int irq; int div_clk; int fclock; TYPE_2__* conf; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int sensor_count; int (* remove_sensor ) (struct ti_bandgap*,int) ;TYPE_1__* sensors; } ;
struct TYPE_3__ {int (* unregister_cooling ) (struct ti_bandgap*,int) ;} ;


 int CLK_CTRL ;
 int TALERT ;
 scalar_t__ TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int TSHUT ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct ti_bandgap*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;
 struct ti_bandgap* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct ti_bandgap*,int) ;
 int stub2 (struct ti_bandgap*,int) ;
 int ti_bandgap_power (struct ti_bandgap*,int) ;

__attribute__((used)) static
int ti_bandgap_remove(struct platform_device *pdev)
{
 struct ti_bandgap *bgp = platform_get_drvdata(pdev);
 int i;


 for (i = 0; i < bgp->conf->sensor_count; i++) {
  if (bgp->conf->sensors[i].unregister_cooling)
   bgp->conf->sensors[i].unregister_cooling(bgp, i);

  if (bgp->conf->remove_sensor)
   bgp->conf->remove_sensor(bgp, i);
 }

 ti_bandgap_power(bgp, 0);

 if (TI_BANDGAP_HAS(bgp, CLK_CTRL))
  clk_disable_unprepare(bgp->fclock);
 clk_put(bgp->fclock);
 clk_put(bgp->div_clk);

 if (TI_BANDGAP_HAS(bgp, TALERT))
  free_irq(bgp->irq, bgp);

 if (TI_BANDGAP_HAS(bgp, TSHUT)) {
  free_irq(gpio_to_irq(bgp->tshut_gpio), ((void*)0));
  gpio_free(bgp->tshut_gpio);
 }

 return 0;
}
