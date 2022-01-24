#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct esp {scalar_t__ dmarev; TYPE_1__* host; int /*<<< orphan*/  dma_regs; int /*<<< orphan*/  regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; struct platform_device* dma; } ;
struct TYPE_2__ {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CSR ; 
 int DMA_INT_ENAB ; 
 int /*<<< orphan*/  SBUS_ESP_REG_SIZE ; 
 struct esp* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ dvmahme ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct esp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct esp*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *op)
{
	struct esp *esp = FUNC0(&op->dev);
	struct platform_device *dma_of = esp->dma;
	unsigned int irq = esp->host->irq;
	bool is_hme;
	u32 val;

	FUNC9(esp);

	/* Disable interrupts.  */
	val = FUNC3(DMA_CSR);
	FUNC4(val & ~DMA_INT_ENAB, DMA_CSR);

	FUNC5(irq, esp);

	is_hme = (esp->dmarev == dvmahme);

	FUNC2(&op->dev, 16,
			  esp->command_block,
			  esp->command_block_dma);
	FUNC6(&op->resource[(is_hme ? 1 : 0)], esp->regs,
		   SBUS_ESP_REG_SIZE);
	FUNC6(&dma_of->resource[0], esp->dma_regs,
		   FUNC8(&dma_of->resource[0]));

	FUNC10(esp->host);

	FUNC1(&op->dev, NULL);

	FUNC7(&dma_of->dev);

	return 0;
}