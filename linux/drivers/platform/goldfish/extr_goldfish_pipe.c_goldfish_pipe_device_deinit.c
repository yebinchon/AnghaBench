
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct goldfish_pipe_dev {scalar_t__ buffers; int pipes; int irq_tasklet; int miscdev; } ;


 int free_page (unsigned long) ;
 int kfree (int ) ;
 int misc_deregister (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void goldfish_pipe_device_deinit(struct platform_device *pdev,
     struct goldfish_pipe_dev *dev)
{
 misc_deregister(&dev->miscdev);
 tasklet_kill(&dev->irq_tasklet);
 kfree(dev->pipes);
 free_page((unsigned long)dev->buffers);
}
