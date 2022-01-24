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
struct Scsi_Host {scalar_t__ host_failed; int /*<<< orphan*/  ehandler; int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct Scsi_Host *shost)
{
	FUNC1(shost->host_lock);

	if (FUNC2(shost) == shost->host_failed) {
		FUNC4(shost);
		FUNC5(shost->ehandler);
		FUNC0(5, FUNC3(KERN_INFO, shost,
			"Waking error handler thread\n"));
	}
}