#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct pcmcia_socket {int features; unsigned long io_offset; void* map_size; scalar_t__ cb_dev; int /*<<< orphan*/  pci_irq; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * resource_ops; struct bcm63xx_pcmcia_socket* driver_data; } ;
struct bcm63xx_pcmcia_socket {struct resource* reg_res; void* base; void* io_base; int /*<<< orphan*/  timer; struct resource* common_res; int /*<<< orphan*/  pd; void* attr_res; struct pcmcia_socket socket; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM63XX_PCMCIA_POLL_RATE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PCMCIA_C1_CBIDSEL_MASK ; 
 int PCMCIA_C1_EN_PCMCIA_GPIO_MASK ; 
 int /*<<< orphan*/  PCMCIA_C1_REG ; 
 int PCMCIA_C2_DATA16_MASK ; 
 int PCMCIA_C2_HOLD_SHIFT ; 
 int PCMCIA_C2_INACTIVE_SHIFT ; 
 int /*<<< orphan*/  PCMCIA_C2_REG ; 
 int PCMCIA_C2_RWCOUNT_SHIFT ; 
 int PCMCIA_C2_SETUP_SHIFT ; 
 int SS_CAP_CARDBUS ; 
 int SS_CAP_PCCARD ; 
 int SS_CAP_STATIC_MAP ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ bcm63xx_cb_dev ; 
 int /*<<< orphan*/  bcm63xx_pcmcia_operations ; 
 int /*<<< orphan*/  bcm63xx_pcmcia_poll ; 
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_pcmcia_socket*) ; 
 struct bcm63xx_pcmcia_socket* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pccard_static_ops ; 
 int FUNC6 (struct bcm63xx_pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm63xx_pcmcia_socket*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct bcm63xx_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,char*) ; 
 void* FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct bcm63xx_pcmcia_socket *skt;
	struct pcmcia_socket *sock;
	struct resource *res, *irq_res;
	unsigned int regmem_size = 0, iomem_size = 0;
	u32 val;
	int ret;

	skt = FUNC3(sizeof(*skt), GFP_KERNEL);
	if (!skt)
		return -ENOMEM;
	FUNC14(&skt->lock);
	sock = &skt->socket;
	sock->driver_data = skt;

	/* make sure we have all resources we need */
	skt->common_res = FUNC9(pdev, IORESOURCE_MEM, 1);
	skt->attr_res = FUNC9(pdev, IORESOURCE_MEM, 2);
	irq_res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	skt->pd = pdev->dev.platform_data;
	if (!skt->common_res || !skt->attr_res || !irq_res || !skt->pd) {
		ret = -EINVAL;
		goto err;
	}

	/* remap pcmcia registers */
	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	regmem_size = FUNC13(res);
	if (!FUNC12(res->start, regmem_size, "bcm63xx_pcmcia")) {
		ret = -EINVAL;
		goto err;
	}
	skt->reg_res = res;

	skt->base = FUNC0(res->start, regmem_size);
	if (!skt->base) {
		ret = -ENOMEM;
		goto err;
	}

	/* remap io registers */
	res = FUNC9(pdev, IORESOURCE_MEM, 3);
	iomem_size = FUNC13(res);
	skt->io_base = FUNC0(res->start, iomem_size);
	if (!skt->io_base) {
		ret = -ENOMEM;
		goto err;
	}

	/* resources are static */
	sock->resource_ops = &pccard_static_ops;
	sock->ops = &bcm63xx_pcmcia_operations;
	sock->owner = THIS_MODULE;
	sock->dev.parent = &pdev->dev;
	sock->features = SS_CAP_STATIC_MAP | SS_CAP_PCCARD;
	sock->io_offset = (unsigned long)skt->io_base;
	sock->pci_irq = irq_res->start;

#ifdef CONFIG_CARDBUS
	sock->cb_dev = bcm63xx_cb_dev;
	if (bcm63xx_cb_dev)
		sock->features |= SS_CAP_CARDBUS;
#endif

	/* assume common & attribute memory have the same size */
	sock->map_size = FUNC13(skt->common_res);

	/* initialize polling timer */
	FUNC15(&skt->timer, bcm63xx_pcmcia_poll, 0);

	/* initialize  pcmcia  control register,  drive  VS[12] to  0,
	 * leave CB IDSEL to the old  value since it is set by the PCI
	 * layer */
	val = FUNC6(skt, PCMCIA_C1_REG);
	val &= PCMCIA_C1_CBIDSEL_MASK;
	val |= PCMCIA_C1_EN_PCMCIA_GPIO_MASK;
	FUNC8(skt, val, PCMCIA_C1_REG);

	/*
	 * Hardware has only one set of timings registers, not one for
	 * each memory access type, so we configure them for the
	 * slowest one: attribute memory.
	 */
	val = PCMCIA_C2_DATA16_MASK;
	val |= 10 << PCMCIA_C2_RWCOUNT_SHIFT;
	val |= 6 << PCMCIA_C2_INACTIVE_SHIFT;
	val |= 3 << PCMCIA_C2_SETUP_SHIFT;
	val |= 3 << PCMCIA_C2_HOLD_SHIFT;
	FUNC8(skt, val, PCMCIA_C2_REG);

	ret = FUNC7(sock);
	if (ret)
		goto err;

	/* start polling socket */
	FUNC4(&skt->timer,
		  jiffies + FUNC5(BCM63XX_PCMCIA_POLL_RATE));

	FUNC10(pdev, skt);
	return 0;

err:
	if (skt->io_base)
		FUNC1(skt->io_base);
	if (skt->base)
		FUNC1(skt->base);
	if (skt->reg_res)
		FUNC11(skt->reg_res->start, regmem_size);
	FUNC2(skt);
	return ret;
}