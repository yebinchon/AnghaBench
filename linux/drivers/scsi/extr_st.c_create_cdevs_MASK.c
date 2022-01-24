#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_tape {TYPE_1__* modes; TYPE_3__* device; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_2__ sdev_gendev; } ;
struct TYPE_5__ {TYPE_4__** devs; } ;

/* Variables and functions */
 int ST_NBR_MODES ; 
 int FUNC0 (struct scsi_tape*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct scsi_tape *tape)
{
	int mode, error;
	for (mode = 0; mode < ST_NBR_MODES; ++mode) {
		error = FUNC0(tape, mode, 0);
		if (error)
			return error;
		error = FUNC0(tape, mode, 1);
		if (error)
			return error;
	}

	return FUNC1(&tape->device->sdev_gendev.kobj,
				 &tape->modes[0].devs[0]->kobj, "tape");
}