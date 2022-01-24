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
typedef  int u8 ;
struct irb {int /*<<< orphan*/  scsw; } ;
struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_block {struct dasd_device* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* is_ese ) (struct dasd_device*) ;} ;

/* Variables and functions */
 scalar_t__ SCHN_STAT_INCORR_LEN ; 
 int SNS1_FILE_PROTECTED ; 
 int SNS1_NO_REC_FOUND ; 
 int* FUNC0 (struct irb*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 

__attribute__((used)) static int FUNC3(struct dasd_block *block, struct irb *irb)
{
	struct dasd_device *device = NULL;
	u8 *sense = NULL;

	if (!block)
		return 0;
	device = block->base;
	if (!device || !device->discipline->is_ese)
		return 0;
	if (!device->discipline->is_ese(device))
		return 0;

	sense = FUNC0(irb);
	if (!sense)
		return 0;

	return !!(sense[1] & SNS1_NO_REC_FOUND) ||
		!!(sense[1] & SNS1_FILE_PROTECTED) ||
		FUNC1(&irb->scsw) == SCHN_STAT_INCORR_LEN;
}