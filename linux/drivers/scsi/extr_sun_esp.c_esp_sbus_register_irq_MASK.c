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
struct TYPE_2__ {int /*<<< orphan*/ * irqs; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct esp {int /*<<< orphan*/  dev; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct esp*) ; 
 int /*<<< orphan*/  scsi_esp_intr ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct esp *esp)
{
	struct Scsi_Host *host = esp->host;
	struct platform_device *op = FUNC1(esp->dev);

	host->irq = op->archdata.irqs[0];
	return FUNC0(host->irq, scsi_esp_intr, IRQF_SHARED, "ESP", esp);
}