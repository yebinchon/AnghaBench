#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct expansion_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {TYPE_2__ scsi; } ;
struct eesoxscsi_info {TYPE_1__ info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ NO_DMA ; 
 int /*<<< orphan*/  dev_attr_bus_term ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct eesoxscsi_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC9(struct expansion_card *ec)
{
	struct Scsi_Host *host = FUNC1(ec);
	struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;

	FUNC3(ec, NULL);
	FUNC5(host);

	if (info->info.scsi.dma != NO_DMA)
		FUNC6(info->info.scsi.dma);
	FUNC7(ec->irq, info);

	FUNC0(&ec->dev, &dev_attr_bus_term);

	FUNC4(host);
	FUNC8(host);
	FUNC2(ec);
}