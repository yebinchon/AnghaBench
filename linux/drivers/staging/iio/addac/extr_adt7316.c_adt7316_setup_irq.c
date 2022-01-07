
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; int name; } ;
struct TYPE_2__ {int irq; } ;
struct adt7316_chip_info {int config1; TYPE_1__ bus; } ;


 int ADT7316_INT_POLARITY ;
 int IRQF_ONESHOT ;




 int adt7316_event_handler ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct iio_dev*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int irq_get_irq_data (int ) ;
 int irqd_get_trigger_type (int ) ;

__attribute__((used)) static int adt7316_setup_irq(struct iio_dev *indio_dev)
{
 struct adt7316_chip_info *chip = iio_priv(indio_dev);
 int irq_type, ret;

 irq_type = irqd_get_trigger_type(irq_get_irq_data(chip->bus.irq));

 switch (irq_type) {
 case 130:
 case 128:
  break;
 case 129:
 case 131:
  break;
 default:
  dev_info(&indio_dev->dev, "mode %d unsupported, using IRQF_TRIGGER_LOW\n",
    irq_type);
  irq_type = 129;
  break;
 }

 ret = devm_request_threaded_irq(&indio_dev->dev, chip->bus.irq,
     ((void*)0), adt7316_event_handler,
     irq_type | IRQF_ONESHOT,
     indio_dev->name, indio_dev);
 if (ret) {
  dev_err(&indio_dev->dev, "failed to request irq %d\n",
   chip->bus.irq);
  return ret;
 }

 if (irq_type & 130)
  chip->config1 |= ADT7316_INT_POLARITY;

 return 0;
}
