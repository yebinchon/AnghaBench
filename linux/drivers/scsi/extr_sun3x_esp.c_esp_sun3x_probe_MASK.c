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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct esp {int scsi_id; int scsi_id_mask; int cfreq; void* regs; void* dma_regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; int /*<<< orphan*/ * dev; struct Scsi_Host* host; int /*<<< orphan*/ * ops; } ;
struct Scsi_Host {int max_id; int this_id; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct esp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct esp*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct esp*) ; 
 int /*<<< orphan*/  scsi_esp_intr ; 
 int FUNC9 (struct esp*) ; 
 struct scsi_host_template scsi_esp_template ; 
 struct Scsi_Host* FUNC10 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 struct esp* FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  sun3x_esp_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	struct scsi_host_template *tpnt = &scsi_esp_template;
	struct Scsi_Host *host;
	struct esp *esp;
	struct resource *res;
	int err = -ENOMEM;

	host = FUNC10(tpnt, sizeof(struct esp));
	if (!host)
		goto fail;

	host->max_id = 8;
	esp = FUNC12(host);

	esp->host = host;
	esp->dev = &dev->dev;
	esp->ops = &sun3x_esp_ops;

	res = FUNC7(dev, IORESOURCE_MEM, 0);
	if (!res || !res->start)
		goto fail_unlink;

	esp->regs = FUNC4(res->start, 0x20);
	if (!esp->regs)
		goto fail_unmap_regs;

	res = FUNC7(dev, IORESOURCE_MEM, 1);
	if (!res || !res->start)
		goto fail_unmap_regs;

	esp->dma_regs = FUNC4(res->start, 0x10);

	esp->command_block = FUNC1(esp->dev, 16,
						&esp->command_block_dma,
						GFP_KERNEL);
	if (!esp->command_block)
		goto fail_unmap_regs_dma;

	host->irq = FUNC6(dev, 0);
	err = FUNC8(host->irq, scsi_esp_intr, IRQF_SHARED,
			  "SUN3X ESP", esp);
	if (err < 0)
		goto fail_unmap_command_block;

	esp->scsi_id = 7;
	esp->host->this_id = esp->scsi_id;
	esp->scsi_id_mask = (1 << esp->scsi_id);
	esp->cfreq = 20000000;

	FUNC0(&dev->dev, esp);

	err = FUNC9(esp);
	if (err)
		goto fail_free_irq;

	return 0;

fail_free_irq:
	FUNC3(host->irq, esp);
fail_unmap_command_block:
	FUNC2(esp->dev, 16,
			  esp->command_block,
			  esp->command_block_dma);
fail_unmap_regs_dma:
	FUNC5(esp->dma_regs);
fail_unmap_regs:
	FUNC5(esp->regs);
fail_unlink:
	FUNC11(host);
fail:
	return err;
}