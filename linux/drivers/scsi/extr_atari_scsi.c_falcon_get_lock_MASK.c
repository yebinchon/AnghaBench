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
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int can_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  scsi_falcon_intr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *instance)
{
	if (FUNC0())
		return 1;

	if (FUNC2(scsi_falcon_intr) &&
	    instance->hostt->can_queue > 1)
		return 1;

	if (FUNC1())
		return FUNC4(scsi_falcon_intr, instance);

	FUNC3(scsi_falcon_intr, instance);
	return 1;
}