
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_device {scalar_t__* irq_state; int fifo_wait_queue; scalar_t__ free_in_fifo; int dev; int rx_wait_queue; } ;
typedef int irqreturn_t ;


 size_t DIO0 ;
 scalar_t__ DIO_PACKET_SENT ;
 scalar_t__ DIO_PAYLOAD_READY ;
 scalar_t__ DIO_RSSI_DIO0 ;
 scalar_t__ FIFO_SIZE ;
 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t DIO0_irq_handler(int irq, void *dev_id)
{
 struct pi433_device *device = dev_id;

 if (device->irq_state[DIO0] == DIO_PACKET_SENT) {
  device->free_in_fifo = FIFO_SIZE;
  dev_dbg(device->dev, "DIO0 irq: Packet sent\n");
  wake_up_interruptible(&device->fifo_wait_queue);
 } else if (device->irq_state[DIO0] == DIO_RSSI_DIO0) {
  dev_dbg(device->dev, "DIO0 irq: RSSI level over threshold\n");
  wake_up_interruptible(&device->rx_wait_queue);
 } else if (device->irq_state[DIO0] == DIO_PAYLOAD_READY) {
  dev_dbg(device->dev, "DIO0 irq: Payload ready\n");
  device->free_in_fifo = 0;
  wake_up_interruptible(&device->fifo_wait_queue);
 }

 return IRQ_HANDLED;
}
