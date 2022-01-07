
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vsoc_region_data {int interrupt_wait_queue; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {TYPE_2__* dev; struct vsoc_region_data* regions_data; TYPE_1__* layout; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int region_count; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int *,char*,struct vsoc_region_data*,int) ;
 scalar_t__ unlikely (int) ;
 TYPE_3__ vsoc_dev ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t vsoc_interrupt(int irq, void *region_data_v)
{
 struct vsoc_region_data *region_data =
     (struct vsoc_region_data *)region_data_v;
 int reg_num = region_data - vsoc_dev.regions_data;

 if (unlikely(!region_data))
  return IRQ_NONE;

 if (unlikely(reg_num < 0 ||
       reg_num >= vsoc_dev.layout->region_count)) {
  dev_err(&vsoc_dev.dev->dev,
   "invalid irq @%p reg_num=0x%04x\n",
   region_data, reg_num);
  return IRQ_NONE;
 }
 if (unlikely(vsoc_dev.regions_data + reg_num != region_data)) {
  dev_err(&vsoc_dev.dev->dev,
   "irq not aligned @%p reg_num=0x%04x\n",
   region_data, reg_num);
  return IRQ_NONE;
 }
 wake_up_interruptible(&region_data->interrupt_wait_queue);
 return IRQ_HANDLED;
}
