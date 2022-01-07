
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct bcm63xx_pcmcia_socket {struct resource* reg_res; int io_base; int base; int timer; } ;


 int del_timer_sync (int *) ;
 int iounmap (int ) ;
 int kfree (struct bcm63xx_pcmcia_socket*) ;
 struct bcm63xx_pcmcia_socket* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int bcm63xx_drv_pcmcia_remove(struct platform_device *pdev)
{
 struct bcm63xx_pcmcia_socket *skt;
 struct resource *res;

 skt = platform_get_drvdata(pdev);
 del_timer_sync(&skt->timer);
 iounmap(skt->base);
 iounmap(skt->io_base);
 res = skt->reg_res;
 release_mem_region(res->start, resource_size(res));
 kfree(skt);
 return 0;
}
