
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct electra_cf_socket {int io_size; int io_base; int mem_size; int mem_phys; int gpio_base; int mem_base; int io_virt; int timer; int irq; int socket; scalar_t__ active; } ;


 int __iounmap_at (int ,int ) ;
 int del_timer_sync (int *) ;
 struct electra_cf_socket* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct electra_cf_socket*) ;
 int iounmap (int ) ;
 int kfree (struct electra_cf_socket*) ;
 int pcmcia_unregister_socket (int *) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;

__attribute__((used)) static int electra_cf_remove(struct platform_device *ofdev)
{
 struct device *device = &ofdev->dev;
 struct electra_cf_socket *cf;

 cf = dev_get_drvdata(device);

 cf->active = 0;
 pcmcia_unregister_socket(&cf->socket);
 free_irq(cf->irq, cf);
 del_timer_sync(&cf->timer);

 __iounmap_at(cf->io_virt, cf->io_size);
 iounmap(cf->mem_base);
 iounmap(cf->gpio_base);
 release_mem_region(cf->mem_phys, cf->mem_size);
 release_region(cf->io_base, cf->io_size);

 kfree(cf);

 return 0;
}
