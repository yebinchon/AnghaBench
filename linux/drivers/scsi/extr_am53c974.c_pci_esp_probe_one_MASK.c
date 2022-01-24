#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_host_template {int dummy; } ;
struct pci_esp_priv {struct esp* esp; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct esp {int scsi_id; int scsi_id_mask; int cfreq; scalar_t__ regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; scalar_t__ dma_regs; int /*<<< orphan*/  config2; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int this_id; int max_id; int /*<<< orphan*/  io_port; int /*<<< orphan*/  unique_id; int /*<<< orphan*/  n_io_port; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESP_CONFIG2_FENAB ; 
 int /*<<< orphan*/  ESP_FLAG_USE_FIFO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ am53c974_fenab ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct esp*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_esp_priv*) ; 
 struct pci_esp_priv* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_esp_ops ; 
 scalar_t__ FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct pci_esp_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct esp*) ; 
 int /*<<< orphan*/  scsi_esp_intr ; 
 int FUNC20 (struct esp*) ; 
 struct scsi_host_template scsi_esp_template ; 
 struct Scsi_Host* FUNC21 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct Scsi_Host*) ; 
 struct esp* FUNC23 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC24(struct pci_dev *pdev,
			      const struct pci_device_id *id)
{
	struct scsi_host_template *hostt = &scsi_esp_template;
	int err = -ENODEV;
	struct Scsi_Host *shost;
	struct esp *esp;
	struct pci_esp_priv *pep;

	if (FUNC10(pdev)) {
		FUNC2(KERN_INFO, &pdev->dev, "cannot enable device\n");
		return -ENODEV;
	}

	if (FUNC5(&pdev->dev, FUNC0(32))) {
		FUNC2(KERN_INFO, &pdev->dev,
			   "failed to set 32bit DMA mask\n");
		goto fail_disable_device;
	}

	shost = FUNC21(hostt, sizeof(struct esp));
	if (!shost) {
		FUNC2(KERN_INFO, &pdev->dev,
			   "failed to allocate scsi host\n");
		err = -ENOMEM;
		goto fail_disable_device;
	}

	pep = FUNC8(sizeof(struct pci_esp_priv), GFP_KERNEL);
	if (!pep) {
		FUNC2(KERN_INFO, &pdev->dev,
			   "failed to allocate esp_priv\n");
		err = -ENOMEM;
		goto fail_host_alloc;
	}

	esp = FUNC23(shost);
	esp->host = shost;
	esp->dev = &pdev->dev;
	esp->ops = &pci_esp_ops;
	/*
	 * The am53c974 HBA has a design flaw of generating
	 * spurious DMA completion interrupts when using
	 * DMA for command submission.
	 */
	esp->flags |= ESP_FLAG_USE_FIFO;
	/*
	 * Enable CONFIG2_FENAB to allow for large DMA transfers
	 */
	if (am53c974_fenab)
		esp->config2 |= ESP_CONFIG2_FENAB;

	pep->esp = esp;

	if (FUNC14(pdev, DRV_MODULE_NAME)) {
		FUNC2(KERN_ERR, &pdev->dev,
			   "pci memory selection failed\n");
		goto fail_priv_alloc;
	}

	esp->regs = FUNC11(pdev, 0, FUNC15(pdev, 0));
	if (!esp->regs) {
		FUNC2(KERN_ERR, &pdev->dev, "pci I/O map failed\n");
		err = -EINVAL;
		goto fail_release_regions;
	}
	esp->dma_regs = esp->regs;

	FUNC18(pdev);

	esp->command_block = FUNC3(&pdev->dev, 16,
			&esp->command_block_dma, GFP_KERNEL);
	if (!esp->command_block) {
		FUNC2(KERN_ERR, &pdev->dev,
			   "failed to allocate command block\n");
		err = -ENOMEM;
		goto fail_unmap_regs;
	}

	FUNC17(pdev, pep);

	err = FUNC19(pdev->irq, scsi_esp_intr, IRQF_SHARED,
			  DRV_MODULE_NAME, esp);
	if (err < 0) {
		FUNC2(KERN_ERR, &pdev->dev, "failed to register IRQ\n");
		goto fail_unmap_command_block;
	}

	esp->scsi_id = 7;
	FUNC1(esp);

	shost->this_id = esp->scsi_id;
	shost->max_id = 8;
	shost->irq = pdev->irq;
	shost->io_port = FUNC16(pdev, 0);
	shost->n_io_port = FUNC15(pdev, 0);
	shost->unique_id = shost->io_port;
	esp->scsi_id_mask = (1 << esp->scsi_id);
	/* Assume 40MHz clock */
	esp->cfreq = 40000000;

	err = FUNC20(esp);
	if (err)
		goto fail_free_irq;

	return 0;

fail_free_irq:
	FUNC6(pdev->irq, esp);
fail_unmap_command_block:
	FUNC17(pdev, NULL);
	FUNC4(&pdev->dev, 16, esp->command_block,
			  esp->command_block_dma);
fail_unmap_regs:
	FUNC12(pdev, esp->regs);
fail_release_regions:
	FUNC13(pdev);
fail_priv_alloc:
	FUNC7(pep);
fail_host_alloc:
	FUNC22(shost);
fail_disable_device:
	FUNC9(pdev);

	return err;
}