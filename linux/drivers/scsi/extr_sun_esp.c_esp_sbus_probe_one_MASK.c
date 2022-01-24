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
typedef  int u32 ;
struct scsi_host_template {int dummy; } ;
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct esp {scalar_t__ dmarev; int /*<<< orphan*/  regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int max_id; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CSR ; 
 int DMA_RST_SCSI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESP_FLAG_WIDE_CAPABLE ; 
 int /*<<< orphan*/  SBUS_ESP_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct esp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ dvmaesc1 ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,struct platform_device*) ; 
 int FUNC5 (struct esp*) ; 
 int FUNC6 (struct esp*,int) ; 
 int FUNC7 (struct esp*) ; 
 int FUNC8 (struct esp*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct esp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbus_esp_ops ; 
 int FUNC11 (struct esp*) ; 
 struct scsi_host_template scsi_esp_template ; 
 struct Scsi_Host* FUNC12 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct Scsi_Host*) ; 
 struct esp* FUNC14 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *op,
			      struct platform_device *espdma, int hme)
{
	struct scsi_host_template *tpnt = &scsi_esp_template;
	struct Scsi_Host *host;
	struct esp *esp;
	int err;

	host = FUNC12(tpnt, sizeof(struct esp));

	err = -ENOMEM;
	if (!host)
		goto fail;

	host->max_id = (hme ? 16 : 8);
	esp = FUNC14(host);

	esp->host = host;
	esp->dev = &op->dev;
	esp->ops = &sbus_esp_ops;

	if (hme)
		esp->flags |= ESP_FLAG_WIDE_CAPABLE;

	err = FUNC8(esp, espdma);
	if (err < 0)
		goto fail_unlink;

	err = FUNC6(esp, hme);
	if (err < 0)
		goto fail_unlink;

	err = FUNC5(esp);
	if (err < 0)
		goto fail_unmap_regs;

	err = FUNC7(esp);
	if (err < 0)
		goto fail_unmap_command_block;

	FUNC4(esp, espdma);

	/* Before we try to touch the ESP chip, ESC1 dma can
	 * come up with the reset bit set, so make sure that
	 * is clear first.
	 */
	if (esp->dmarev == dvmaesc1) {
		u32 val = FUNC2(DMA_CSR);

		FUNC3(val & ~DMA_RST_SCSI, DMA_CSR);
	}

	FUNC0(&op->dev, esp);

	err = FUNC11(esp);
	if (err)
		goto fail_free_irq;

	return 0;

fail_free_irq:
	FUNC9(host->irq, esp);
fail_unmap_command_block:
	FUNC1(&op->dev, 16,
			  esp->command_block,
			  esp->command_block_dma);
fail_unmap_regs:
	FUNC10(&op->resource[(hme ? 1 : 0)], esp->regs, SBUS_ESP_REG_SIZE);
fail_unlink:
	FUNC13(host);
fail:
	return err;
}