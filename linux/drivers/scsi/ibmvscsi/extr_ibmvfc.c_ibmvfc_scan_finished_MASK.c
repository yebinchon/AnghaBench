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
struct ibmvfc_host {scalar_t__ scan_complete; int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 unsigned long init_timeout ; 
 struct ibmvfc_host* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost, unsigned long time)
{
	unsigned long flags;
	struct ibmvfc_host *vhost = FUNC1(shost);
	int done = 0;

	FUNC2(shost->host_lock, flags);
	if (time >= (init_timeout * HZ)) {
		FUNC0(vhost->dev, "Scan taking longer than %d seconds, "
			 "continuing initialization\n", init_timeout);
		done = 1;
	}

	if (vhost->scan_complete)
		done = 1;
	FUNC3(shost->host_lock, flags);
	return done;
}