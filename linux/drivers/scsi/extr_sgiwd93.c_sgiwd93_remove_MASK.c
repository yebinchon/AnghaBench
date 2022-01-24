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
struct sgiwd93_platform_data {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {struct sgiwd93_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ip22_hostdata {int /*<<< orphan*/  dma; int /*<<< orphan*/  cpu; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_NON_CONSISTENT ; 
 int /*<<< orphan*/  HPC_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct Scsi_Host *host = FUNC2(pdev);
	struct ip22_hostdata *hdata = (struct ip22_hostdata *) host->hostdata;
	struct sgiwd93_platform_data *pd = pdev->dev.platform_data;

	FUNC4(host);
	FUNC1(pd->irq, host);
	FUNC0(&pdev->dev, HPC_DMA_SIZE, hdata->cpu, hdata->dma,
		       DMA_ATTR_NON_CONSISTENT);
	FUNC3(host);
	return 0;
}