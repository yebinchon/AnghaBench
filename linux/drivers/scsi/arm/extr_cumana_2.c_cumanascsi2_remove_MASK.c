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
struct expansion_card {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ dma; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;
struct cumanascsi2_info {TYPE_2__ info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ NO_DMA ; 
 struct Scsi_Host* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cumanascsi2_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC8(struct expansion_card *ec)
{
	struct Scsi_Host *host = FUNC0(ec);
	struct cumanascsi2_info *info = (struct cumanascsi2_info *)host->hostdata;

	FUNC2(ec, NULL);
	FUNC4(host);

	if (info->info.scsi.dma != NO_DMA)
		FUNC5(info->info.scsi.dma);
	FUNC6(ec->irq, info);

	FUNC3(host);
	FUNC7(host);
	FUNC1(ec);
}