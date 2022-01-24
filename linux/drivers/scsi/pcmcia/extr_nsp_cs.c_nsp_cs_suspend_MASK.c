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
struct pcmcia_device {TYPE_2__* priv; } ;
struct TYPE_4__ {int stop; TYPE_1__* host; } ;
typedef  TYPE_2__ scsi_info_t ;
typedef  int /*<<< orphan*/  nsp_hw_data ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *link)
{
	scsi_info_t *info = link->priv;
	nsp_hw_data *data;

	FUNC0(NSP_DEBUG_INIT, "event: suspend");

	if (info->host != NULL) {
		FUNC1(KERN_INFO, "clear SDTR status");

		data = (nsp_hw_data *)info->host->hostdata;

		FUNC2(data);
	}

	info->stop = 1;

	return 0;
}