
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int irq; } ;


 int disable_irq_nosync (int ) ;

void wlcore_disable_interrupts_nosync(struct wl1271 *wl)
{
 disable_irq_nosync(wl->irq);
}
