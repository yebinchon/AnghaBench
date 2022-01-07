
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlynq_device {TYPE_1__* local; } ;
struct TYPE_2__ {int control; } ;


 int VLYNQ_CTRL_RESET ;
 int msleep (int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void vlynq_reset(struct vlynq_device *dev)
{
 writel(readl(&dev->local->control) | VLYNQ_CTRL_RESET,
   &dev->local->control);


 msleep(5);


 writel(readl(&dev->local->control) & ~VLYNQ_CTRL_RESET,
   &dev->local->control);


 msleep(5);
}
