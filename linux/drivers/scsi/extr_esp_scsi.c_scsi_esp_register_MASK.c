#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct esp {size_t rev; int cfreq; TYPE_1__* host; int /*<<< orphan*/  dev; int /*<<< orphan*/  scsi_id; int /*<<< orphan*/  cfact; int /*<<< orphan*/  dma_regs; int /*<<< orphan*/  regs; scalar_t__ num_tags; } ;
struct TYPE_3__ {int cmd_per_lun; int unique_id; int /*<<< orphan*/  irq; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 scalar_t__ ESP_DEFAULT_TAGS ; 
 int /*<<< orphan*/  ESP_MAX_LUN ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  esp_bus_reset_settle ; 
 int /*<<< orphan*/ * esp_chip_names ; 
 int /*<<< orphan*/  FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*) ; 
 int /*<<< orphan*/  esp_transport_template ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct esp *esp)
{
	static int instance;
	int err;

	if (!esp->num_tags)
		esp->num_tags = ESP_DEFAULT_TAGS;
	esp->host->transportt = esp_transport_template;
	esp->host->max_lun = ESP_MAX_LUN;
	esp->host->cmd_per_lun = 2;
	esp->host->unique_id = instance;

	FUNC4(esp);

	FUNC2(esp);

	FUNC3(esp);

	FUNC1(esp);

	FUNC0(KERN_INFO, esp->dev, "esp%u: regs[%1p:%1p] irq[%u]\n",
		   esp->host->unique_id, esp->regs, esp->dma_regs,
		   esp->host->irq);
	FUNC0(KERN_INFO, esp->dev,
		   "esp%u: is a %s, %u MHz (ccf=%u), SCSI ID %u\n",
		   esp->host->unique_id, esp_chip_names[esp->rev],
		   esp->cfreq / 1000000, esp->cfact, esp->scsi_id);

	/* Let the SCSI bus reset settle. */
	FUNC7(esp_bus_reset_settle);

	err = FUNC5(esp->host, esp->dev);
	if (err)
		return err;

	instance++;

	FUNC6(esp->host);

	return 0;
}