
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpnp_tm_chip {int tz_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t qpnp_tm_isr(int irq, void *data)
{
 struct qpnp_tm_chip *chip = data;

 thermal_zone_device_update(chip->tz_dev, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
