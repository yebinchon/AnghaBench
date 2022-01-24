#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_13__ {struct at91_cf_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_10__ {TYPE_4__* parent; } ;
struct TYPE_12__ {int io_offset; int features; TYPE_2__* io; int /*<<< orphan*/  map_size; int /*<<< orphan*/ * resource_ops; int /*<<< orphan*/ * ops; TYPE_1__ dev; int /*<<< orphan*/  owner; scalar_t__ pci_irq; } ;
struct at91_cf_socket {TYPE_3__ socket; scalar_t__ phys_baseaddr; struct platform_device* pdev; struct at91_cf_data* board; } ;
struct at91_cf_data {int /*<<< orphan*/  irq_pin; int /*<<< orphan*/  det_pin; int /*<<< orphan*/  vcc_pin; int /*<<< orphan*/  rst_pin; } ;
struct TYPE_11__ {struct resource* res; } ;

/* Variables and functions */
 scalar_t__ CF_IO_PHYS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int SS_CAP_MEM_ALIGN ; 
 int SS_CAP_PCCARD ; 
 int SS_CAP_STATIC_MAP ; 
 int /*<<< orphan*/  SZ_2K ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  at91_cf_irq ; 
 int /*<<< orphan*/  at91_cf_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 struct at91_cf_socket* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct at91_cf_socket*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ nr_irqs ; 
 int /*<<< orphan*/  pccard_static_ops ; 
 int FUNC9 (int,scalar_t__) ; 
 int FUNC10 (TYPE_3__*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct at91_cf_socket*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct at91_cf_socket	*cf;
	struct at91_cf_data	*board = pdev->dev.platform_data;
	struct resource		*io;
	int			status;

	if (!board) {
		status = FUNC0(pdev);
		if (status)
			return status;

		board = pdev->dev.platform_data;
	}

	if (!FUNC7(board->det_pin) || !FUNC7(board->rst_pin))
		return -ENODEV;

	io = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!io)
		return -ENODEV;

	cf = FUNC4(&pdev->dev, sizeof(*cf), GFP_KERNEL);
	if (!cf)
		return -ENOMEM;

	cf->board = board;
	cf->pdev = pdev;
	cf->phys_baseaddr = io->start;
	FUNC12(pdev, cf);

	/* must be a GPIO; ergo must trigger on both edges */
	status = FUNC3(&pdev->dev, board->det_pin, "cf_det");
	if (status < 0)
		return status;

	status = FUNC5(&pdev->dev, FUNC8(board->det_pin),
					at91_cf_irq, 0, "at91_cf detect", cf);
	if (status < 0)
		return status;

	FUNC2(&pdev->dev, 1);

	status = FUNC3(&pdev->dev, board->rst_pin, "cf_rst");
	if (status < 0)
		goto fail0a;

	if (FUNC7(board->vcc_pin)) {
		status = FUNC3(&pdev->dev, board->vcc_pin, "cf_vcc");
		if (status < 0)
			goto fail0a;
	}

	/*
	 * The card driver will request this irq later as needed.
	 * but it causes lots of "irqNN: nobody cared" messages
	 * unless we report that we handle everything (sigh).
	 * (Note:  DK board doesn't wire the IRQ pin...)
	 */
	if (FUNC7(board->irq_pin)) {
		status = FUNC3(&pdev->dev, board->irq_pin, "cf_irq");
		if (status < 0)
			goto fail0a;

		status = FUNC5(&pdev->dev, FUNC8(board->irq_pin),
					at91_cf_irq, IRQF_SHARED, "at91_cf", cf);
		if (status < 0)
			goto fail0a;
		cf->socket.pci_irq = FUNC8(board->irq_pin);
	} else
		cf->socket.pci_irq = nr_irqs + 1;

	/*
	 * pcmcia layer only remaps "real" memory not iospace
	 * io_offset is set to 0x10000 to avoid the check in static_find_io().
	 * */
	cf->socket.io_offset = 0x10000;
	status = FUNC9(0x10000, cf->phys_baseaddr + CF_IO_PHYS);
	if (status)
		goto fail0a;

	/* reserve chip-select regions */
	if (!FUNC6(&pdev->dev, io->start, FUNC13(io), "at91_cf")) {
		status = -ENXIO;
		goto fail0a;
	}

	FUNC1(&pdev->dev, "irqs det #%d, io #%d\n",
		FUNC8(board->det_pin), FUNC8(board->irq_pin));

	cf->socket.owner = THIS_MODULE;
	cf->socket.dev.parent = &pdev->dev;
	cf->socket.ops = &at91_cf_ops;
	cf->socket.resource_ops = &pccard_static_ops;
	cf->socket.features = SS_CAP_PCCARD | SS_CAP_STATIC_MAP
				| SS_CAP_MEM_ALIGN;
	cf->socket.map_size = SZ_2K;
	cf->socket.io[0].res = io;

	status = FUNC10(&cf->socket);
	if (status < 0)
		goto fail0a;

	return 0;

fail0a:
	FUNC2(&pdev->dev, 0);
	return status;
}