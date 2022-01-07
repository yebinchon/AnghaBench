
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_tm_dev {int tz_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t uniphier_tm_alarm_irq_thread(int irq, void *_tdev)
{
 struct uniphier_tm_dev *tdev = _tdev;

 thermal_zone_device_update(tdev->tz_dev, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
