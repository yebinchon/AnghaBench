
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {TYPE_1__* local; int dev; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int dev_name (int *) ;
 struct vlynq_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pr_debug (char*,int ,int ) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void vlynq_local_ack(struct irq_data *d)
{
 struct vlynq_device *dev = irq_data_get_irq_chip_data(d);
 u32 status = readl(&dev->local->status);

 pr_debug("%s: local status: 0x%08x\n",
         dev_name(&dev->dev), status);
 writel(status, &dev->local->status);
}
