
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_device {int spi; int * irq_num; void** irq_state; int rx_cfg; int rx_active; } ;


 size_t DIO0 ;
 size_t DIO1 ;
 void* DIO_FIFO_LEVEL ;
 void* DIO_RSSI_DIO0 ;
 scalar_t__ FIFO_SIZE ;
 scalar_t__ FIFO_THRESHOLD ;
 int IRQ_TYPE_EDGE_RISING ;
 int irq_set_irq_type (int ,int ) ;
 int receive ;
 int rf69_set_dio_mapping (int ,size_t,void*) ;
 int rf69_set_fifo_threshold (int ,scalar_t__) ;
 int rf69_set_mode (int ,int ) ;
 int rf69_set_rx_cfg (struct pi433_device*,int *) ;

__attribute__((used)) static int
pi433_start_rx(struct pi433_device *dev)
{
 int retval;


 if (!dev->rx_active)
  return 0;


 retval = rf69_set_rx_cfg(dev, &dev->rx_cfg);
 if (retval)
  return retval;


 retval = rf69_set_dio_mapping(dev->spi, DIO0, DIO_RSSI_DIO0);
 if (retval < 0)
  return retval;
 dev->irq_state[DIO0] = DIO_RSSI_DIO0;
 irq_set_irq_type(dev->irq_num[DIO0], IRQ_TYPE_EDGE_RISING);


 retval = rf69_set_fifo_threshold(dev->spi, FIFO_SIZE - FIFO_THRESHOLD);
 if (retval < 0)
  return retval;
 retval = rf69_set_dio_mapping(dev->spi, DIO1, DIO_FIFO_LEVEL);
 if (retval < 0)
  return retval;
 dev->irq_state[DIO1] = DIO_FIFO_LEVEL;
 irq_set_irq_type(dev->irq_num[DIO1], IRQ_TYPE_EDGE_RISING);


 retval = rf69_set_mode(dev->spi, receive);
 if (retval < 0)
  return retval;

 return 0;
}
