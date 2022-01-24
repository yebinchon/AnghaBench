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
struct scsi_target {int dummy; } ;
struct ahd_softc {scalar_t__* tags; TYPE_2__* platform_data; TYPE_1__* bshs; } ;
struct TYPE_4__ {scalar_t__ irq; scalar_t__ host; int /*<<< orphan*/  mem_busaddr; struct scsi_target** starget; } ;
struct TYPE_3__ {scalar_t__ ioport; int /*<<< orphan*/ * maddr; } ;

/* Variables and functions */
 scalar_t__ AHD_LINUX_NOIRQ ; 
 int AHD_NUM_TARGETS ; 
 scalar_t__ BUS_SPACE_MEMIO ; 
 scalar_t__ BUS_SPACE_PIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6(struct ahd_softc *ahd)
{
	struct scsi_target *starget;
	int i;

	if (ahd->platform_data != NULL) {
		/* destroy all of the device and target objects */
		for (i = 0; i < AHD_NUM_TARGETS; i++) {
			starget = ahd->platform_data->starget[i];
			if (starget != NULL) {
				ahd->platform_data->starget[i] = NULL;
			}
		}

		if (ahd->platform_data->irq != AHD_LINUX_NOIRQ)
			FUNC0(ahd->platform_data->irq, ahd);
		if (ahd->tags[0] == BUS_SPACE_PIO
		 && ahd->bshs[0].ioport != 0)
			FUNC4(ahd->bshs[0].ioport, 256);
		if (ahd->tags[1] == BUS_SPACE_PIO
		 && ahd->bshs[1].ioport != 0)
			FUNC4(ahd->bshs[1].ioport, 256);
		if (ahd->tags[0] == BUS_SPACE_MEMIO
		 && ahd->bshs[0].maddr != NULL) {
			FUNC1(ahd->bshs[0].maddr);
			FUNC3(ahd->platform_data->mem_busaddr,
					   0x1000);
		}
		if (ahd->platform_data->host)
			FUNC5(ahd->platform_data->host);

		FUNC2(ahd->platform_data);
	}
}