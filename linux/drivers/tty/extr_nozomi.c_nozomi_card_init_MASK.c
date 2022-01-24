#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct port {int /*<<< orphan*/  fifo_ul; TYPE_1__ port; struct nozomi* dc; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct nozomi {int index_start; int /*<<< orphan*/  base_addr; struct nozomi* send_buf; struct port* port; int /*<<< orphan*/  state; int /*<<< orphan*/  reg_ier; scalar_t__ last_ier; int /*<<< orphan*/  spin_mutex; int /*<<< orphan*/  card_type; struct pci_dev* pdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nozomi**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIFO_BUFFER_SIZE_UL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int MAX_PORT ; 
 int /*<<< orphan*/  NOZOMI_NAME ; 
 int /*<<< orphan*/  NOZOMI_STATE_ENABLED ; 
 int PORT_MDM ; 
 int FUNC3 (struct device*) ; 
 scalar_t__ RESET ; 
 int /*<<< orphan*/  SEND_BUF_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  interrupt_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nozomi*) ; 
 struct nozomi* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nozomi* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nozomi*) ; 
 struct nozomi** ndevs ; 
 int /*<<< orphan*/  noz_tty_port_ops ; 
 int /*<<< orphan*/  FUNC14 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC15 (struct nozomi*) ; 
 int /*<<< orphan*/  ntty_driver ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,struct nozomi*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nozomi*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 struct device* FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev,
				      const struct pci_device_id *ent)
{
	int ret;
	struct nozomi *dc = NULL;
	int ndev_idx;
	int i;

	FUNC4(&pdev->dev, "Init, new card found\n");

	for (ndev_idx = 0; ndev_idx < FUNC0(ndevs); ndev_idx++)
		if (!ndevs[ndev_idx])
			break;

	if (ndev_idx >= FUNC0(ndevs)) {
		FUNC5(&pdev->dev, "no free tty range for this card left\n");
		ret = -EIO;
		goto err;
	}

	dc = FUNC12(sizeof(struct nozomi), GFP_KERNEL);
	if (FUNC28(!dc)) {
		FUNC5(&pdev->dev, "Could not allocate memory\n");
		ret = -ENOMEM;
		goto err_free;
	}

	dc->pdev = pdev;

	ret = FUNC17(dc->pdev);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to enable PCI Device\n");
		goto err_free;
	}

	ret = FUNC20(dc->pdev, NOZOMI_NAME);
	if (ret) {
		FUNC5(&pdev->dev, "I/O address 0x%04x already in use\n",
			(int) /* nozomi_private.io_addr */ 0);
		goto err_disable_device;
	}

	/* Find out what card type it is */
	FUNC14(dc);

	dc->base_addr = FUNC18(dc->pdev, 0, dc->card_type);
	if (!dc->base_addr) {
		FUNC5(&pdev->dev, "Unable to map card MMIO\n");
		ret = -ENODEV;
		goto err_rel_regs;
	}

	dc->send_buf = FUNC11(SEND_BUF_MAX, GFP_KERNEL);
	if (!dc->send_buf) {
		FUNC5(&pdev->dev, "Could not allocate send buffer?\n");
		ret = -ENOMEM;
		goto err_free_sbuf;
	}

	for (i = PORT_MDM; i < MAX_PORT; i++) {
		if (FUNC8(&dc->port[i].fifo_ul, FIFO_BUFFER_SIZE_UL,
					GFP_KERNEL)) {
			FUNC5(&pdev->dev,
					"Could not allocate kfifo buffer\n");
			ret = -ENOMEM;
			goto err_free_kfifo;
		}
	}

	FUNC23(&dc->spin_mutex);

	FUNC15(dc);

	/* Disable all interrupts */
	dc->last_ier = 0;
	FUNC29(dc->last_ier, dc->reg_ier);

	ret = FUNC22(pdev->irq, &interrupt_handler, IRQF_SHARED,
			NOZOMI_NAME, dc);
	if (FUNC28(ret)) {
		FUNC5(&pdev->dev, "can't request irq %d\n", pdev->irq);
		goto err_free_kfifo;
	}

	FUNC1("base_addr: %p", dc->base_addr);

	FUNC13(dc);

	dc->index_start = ndev_idx * MAX_PORT;
	ndevs[ndev_idx] = dc;

	FUNC21(pdev, dc);

	/* Enable RESET interrupt */
	dc->last_ier = RESET;
	FUNC7(dc->last_ier, dc->reg_ier);

	dc->state = NOZOMI_STATE_ENABLED;

	for (i = 0; i < MAX_PORT; i++) {
		struct device *tty_dev;
		struct port *port = &dc->port[i];
		port->dc = dc;
		FUNC25(&port->port);
		port->port.ops = &noz_tty_port_ops;
		tty_dev = FUNC26(&port->port, ntty_driver,
				dc->index_start + i, &pdev->dev);

		if (FUNC2(tty_dev)) {
			ret = FUNC3(tty_dev);
			FUNC5(&pdev->dev, "Could not allocate tty?\n");
			FUNC24(&port->port);
			goto err_free_tty;
		}
	}

	return 0;

err_free_tty:
	for (i = 0; i < MAX_PORT; ++i) {
		FUNC27(ntty_driver, dc->index_start + i);
		FUNC24(&dc->port[i].port);
	}
err_free_kfifo:
	for (i = 0; i < MAX_PORT; i++)
		FUNC9(&dc->port[i].fifo_ul);
err_free_sbuf:
	FUNC10(dc->send_buf);
	FUNC6(dc->base_addr);
err_rel_regs:
	FUNC19(pdev);
err_disable_device:
	FUNC16(pdev);
err_free:
	FUNC10(dc);
err:
	return ret;
}