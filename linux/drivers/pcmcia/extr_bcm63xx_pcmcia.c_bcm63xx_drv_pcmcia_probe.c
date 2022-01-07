
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_4__ {int platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct pcmcia_socket {int features; unsigned long io_offset; void* map_size; scalar_t__ cb_dev; int pci_irq; TYPE_1__ dev; int owner; int * ops; int * resource_ops; struct bcm63xx_pcmcia_socket* driver_data; } ;
struct bcm63xx_pcmcia_socket {struct resource* reg_res; void* base; void* io_base; int timer; struct resource* common_res; int pd; void* attr_res; struct pcmcia_socket socket; int lock; } ;


 int BCM63XX_PCMCIA_POLL_RATE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PCMCIA_C1_CBIDSEL_MASK ;
 int PCMCIA_C1_EN_PCMCIA_GPIO_MASK ;
 int PCMCIA_C1_REG ;
 int PCMCIA_C2_DATA16_MASK ;
 int PCMCIA_C2_HOLD_SHIFT ;
 int PCMCIA_C2_INACTIVE_SHIFT ;
 int PCMCIA_C2_REG ;
 int PCMCIA_C2_RWCOUNT_SHIFT ;
 int PCMCIA_C2_SETUP_SHIFT ;
 int SS_CAP_CARDBUS ;
 int SS_CAP_PCCARD ;
 int SS_CAP_STATIC_MAP ;
 int THIS_MODULE ;
 scalar_t__ bcm63xx_cb_dev ;
 int bcm63xx_pcmcia_operations ;
 int bcm63xx_pcmcia_poll ;
 void* ioremap (int ,unsigned int) ;
 int iounmap (void*) ;
 scalar_t__ jiffies ;
 int kfree (struct bcm63xx_pcmcia_socket*) ;
 struct bcm63xx_pcmcia_socket* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pccard_static_ops ;
 int pcmcia_readl (struct bcm63xx_pcmcia_socket*,int ) ;
 int pcmcia_register_socket (struct pcmcia_socket*) ;
 int pcmcia_writel (struct bcm63xx_pcmcia_socket*,int,int ) ;
 void* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct bcm63xx_pcmcia_socket*) ;
 int release_mem_region (int ,unsigned int) ;
 int request_mem_region (int ,unsigned int,char*) ;
 void* resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int bcm63xx_drv_pcmcia_probe(struct platform_device *pdev)
{
 struct bcm63xx_pcmcia_socket *skt;
 struct pcmcia_socket *sock;
 struct resource *res, *irq_res;
 unsigned int regmem_size = 0, iomem_size = 0;
 u32 val;
 int ret;

 skt = kzalloc(sizeof(*skt), GFP_KERNEL);
 if (!skt)
  return -ENOMEM;
 spin_lock_init(&skt->lock);
 sock = &skt->socket;
 sock->driver_data = skt;


 skt->common_res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 skt->attr_res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 irq_res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 skt->pd = pdev->dev.platform_data;
 if (!skt->common_res || !skt->attr_res || !irq_res || !skt->pd) {
  ret = -EINVAL;
  goto err;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 regmem_size = resource_size(res);
 if (!request_mem_region(res->start, regmem_size, "bcm63xx_pcmcia")) {
  ret = -EINVAL;
  goto err;
 }
 skt->reg_res = res;

 skt->base = ioremap(res->start, regmem_size);
 if (!skt->base) {
  ret = -ENOMEM;
  goto err;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 3);
 iomem_size = resource_size(res);
 skt->io_base = ioremap(res->start, iomem_size);
 if (!skt->io_base) {
  ret = -ENOMEM;
  goto err;
 }


 sock->resource_ops = &pccard_static_ops;
 sock->ops = &bcm63xx_pcmcia_operations;
 sock->owner = THIS_MODULE;
 sock->dev.parent = &pdev->dev;
 sock->features = SS_CAP_STATIC_MAP | SS_CAP_PCCARD;
 sock->io_offset = (unsigned long)skt->io_base;
 sock->pci_irq = irq_res->start;
 sock->map_size = resource_size(skt->common_res);


 timer_setup(&skt->timer, bcm63xx_pcmcia_poll, 0);




 val = pcmcia_readl(skt, PCMCIA_C1_REG);
 val &= PCMCIA_C1_CBIDSEL_MASK;
 val |= PCMCIA_C1_EN_PCMCIA_GPIO_MASK;
 pcmcia_writel(skt, val, PCMCIA_C1_REG);






 val = PCMCIA_C2_DATA16_MASK;
 val |= 10 << PCMCIA_C2_RWCOUNT_SHIFT;
 val |= 6 << PCMCIA_C2_INACTIVE_SHIFT;
 val |= 3 << PCMCIA_C2_SETUP_SHIFT;
 val |= 3 << PCMCIA_C2_HOLD_SHIFT;
 pcmcia_writel(skt, val, PCMCIA_C2_REG);

 ret = pcmcia_register_socket(sock);
 if (ret)
  goto err;


 mod_timer(&skt->timer,
    jiffies + msecs_to_jiffies(BCM63XX_PCMCIA_POLL_RATE));

 platform_set_drvdata(pdev, skt);
 return 0;

err:
 if (skt->io_base)
  iounmap(skt->io_base);
 if (skt->base)
  iounmap(skt->base);
 if (skt->reg_res)
  release_mem_region(skt->reg_res->start, regmem_size);
 kfree(skt);
 return ret;
}
