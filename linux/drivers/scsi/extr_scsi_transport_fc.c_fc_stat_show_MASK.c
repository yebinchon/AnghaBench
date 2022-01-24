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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct fc_internal {TYPE_1__* f; } ;
struct fc_host_statistics {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct fc_host_statistics* (* get_fc_host_stats ) (struct Scsi_Host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned long long) ; 
 struct fc_host_statistics* FUNC2 (struct Scsi_Host*) ; 
 struct fc_internal* FUNC3 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct device const*) ; 

__attribute__((used)) static ssize_t
FUNC5(const struct device *dev, char *buf, unsigned long offset)
{
	struct Scsi_Host *shost = FUNC4(dev);
	struct fc_internal *i = FUNC3(shost->transportt);
	struct fc_host_statistics *stats;
	ssize_t ret = -ENOENT;

	if (offset > sizeof(struct fc_host_statistics) ||
	    offset % sizeof(u64) != 0)
		FUNC0(1);

	if (i->f->get_fc_host_stats) {
		stats = (i->f->get_fc_host_stats)(shost);
		if (stats)
			ret = FUNC1(buf, 20, "0x%llx\n",
			      (unsigned long long)*(u64 *)(((u8 *) stats) + offset));
	}
	return ret;
}