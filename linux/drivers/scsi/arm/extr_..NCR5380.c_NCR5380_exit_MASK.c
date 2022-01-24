#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int /*<<< orphan*/  work_q; int /*<<< orphan*/  main_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct NCR5380_hostdata* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *instance)
{
	struct NCR5380_hostdata *hostdata = FUNC2(instance);

	FUNC0(&hostdata->main_task);
	FUNC1(hostdata->work_q);
}