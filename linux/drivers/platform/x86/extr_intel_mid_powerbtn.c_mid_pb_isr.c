
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mid_pb_ddata {struct input_dev* input; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int EV_KEY ;
 int IRQ_HANDLED ;
 int KEY_POWER ;
 int dev_err (int ,char*,int) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;
 int mid_irq_ack (struct mid_pb_ddata*) ;
 int mid_pbstat (struct mid_pb_ddata*,int*) ;

__attribute__((used)) static irqreturn_t mid_pb_isr(int irq, void *dev_id)
{
 struct mid_pb_ddata *ddata = dev_id;
 struct input_dev *input = ddata->input;
 int value = 0;
 int ret;

 ret = mid_pbstat(ddata, &value);
 if (ret < 0) {
  dev_err(input->dev.parent,
   "Read error %d while reading MSIC_PB_STATUS\n", ret);
 } else {
  input_event(input, EV_KEY, KEY_POWER, value);
  input_sync(input);
 }

 mid_irq_ack(ddata);
 return IRQ_HANDLED;
}
