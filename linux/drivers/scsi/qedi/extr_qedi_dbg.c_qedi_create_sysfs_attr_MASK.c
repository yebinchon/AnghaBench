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
struct sysfs_bin_attrs {scalar_t__ name; int /*<<< orphan*/  attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct Scsi_Host *shost, struct sysfs_bin_attrs *iter)
{
	int ret = 0;

	for (; iter->name; iter++) {
		ret = FUNC1(&shost->shost_gendev.kobj,
					    iter->attr);
		if (ret)
			FUNC0("Unable to create sysfs %s attr, err(%d).\n",
			       iter->name, ret);
	}
	return ret;
}