
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int irq_work; int hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ieee80211_queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t wl1251_line_irq(int irq, void *cookie)
{
 struct wl1251 *wl = cookie;

 ieee80211_queue_work(wl->hw, &wl->irq_work);

 return IRQ_HANDLED;
}
