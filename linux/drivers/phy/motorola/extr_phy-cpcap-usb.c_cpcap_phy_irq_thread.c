
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_phy_ddata {int detect_work; int active; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atomic_read (int *) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t cpcap_phy_irq_thread(int irq, void *data)
{
 struct cpcap_phy_ddata *ddata = data;

 if (!atomic_read(&ddata->active))
  return IRQ_NONE;

 schedule_delayed_work(&ddata->detect_work, msecs_to_jiffies(1));

 return IRQ_HANDLED;
}
