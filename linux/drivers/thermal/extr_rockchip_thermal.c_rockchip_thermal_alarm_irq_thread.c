
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rockchip_thermal_data {TYPE_1__* sensors; TYPE_3__* chip; int regs; TYPE_2__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int chn_num; int (* irq_ack ) (int ) ;} ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int tzd; } ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int dev_dbg (int *,char*) ;
 int stub1 (int ) ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t rockchip_thermal_alarm_irq_thread(int irq, void *dev)
{
 struct rockchip_thermal_data *thermal = dev;
 int i;

 dev_dbg(&thermal->pdev->dev, "thermal alarm\n");

 thermal->chip->irq_ack(thermal->regs);

 for (i = 0; i < thermal->chip->chn_num; i++)
  thermal_zone_device_update(thermal->sensors[i].tzd,
        THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
