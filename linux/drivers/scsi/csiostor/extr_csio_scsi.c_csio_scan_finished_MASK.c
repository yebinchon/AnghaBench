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
struct TYPE_2__ {int /*<<< orphan*/  sm_list; } ;
struct csio_lnode {TYPE_1__ sm; int /*<<< orphan*/  hwp; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int HZ ; 
 int csio_delta_scan_tmo ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int csio_max_scan_tmo ; 
 int FUNC1 (struct csio_lnode*,int /*<<< orphan*/ ,unsigned long,int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct csio_lnode* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct Scsi_Host *shost, unsigned long time)
{
	struct csio_lnode *ln = FUNC2(shost);
	int rv = 1;

	FUNC3(shost->host_lock);
	if (!ln->hwp || FUNC0(&ln->sm.sm_list))
		goto out;

	rv = FUNC1(ln, jiffies, time, csio_max_scan_tmo * HZ,
			    csio_delta_scan_tmo * HZ);
out:
	FUNC4(shost->host_lock);

	return rv;
}