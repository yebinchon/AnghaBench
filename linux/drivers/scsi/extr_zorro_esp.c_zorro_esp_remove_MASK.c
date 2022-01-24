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
struct zorro_esp_priv {int /*<<< orphan*/  board_base; scalar_t__ zorro3; struct esp* esp; } ;
struct zorro_dev {int /*<<< orphan*/  dev; } ;
struct esp {int /*<<< orphan*/  regs; int /*<<< orphan*/  dma_regs; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; int /*<<< orphan*/  dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int base; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct zorro_esp_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zorro_esp_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct esp*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct zorro_dev*) ; 

__attribute__((used)) static void FUNC8(struct zorro_dev *z)
{
	struct zorro_esp_priv *zep = FUNC0(&z->dev);
	struct esp *esp	= zep->esp;
	struct Scsi_Host *host = esp->host;

	FUNC5(esp);

	FUNC2(host->irq, esp);
	FUNC1(esp->dev, 16,
			  esp->command_block,
			  esp->command_block_dma);

	if (zep->zorro3) {
		FUNC3(zep->board_base);
		FUNC3(esp->dma_regs);
	}

	if (host->base > 0xffffff)
		FUNC3(esp->regs);

	FUNC6(host);

	FUNC7(z);

	FUNC4(zep);
}