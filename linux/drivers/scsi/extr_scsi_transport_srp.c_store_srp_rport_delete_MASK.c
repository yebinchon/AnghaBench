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
struct srp_rport {int dummy; } ;
struct srp_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* rport_delete ) (struct srp_rport*) ;} ;

/* Variables and functions */
 size_t ENOSYS ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct srp_rport*) ; 
 struct srp_internal* FUNC2 (int /*<<< orphan*/ ) ; 
 struct srp_rport* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct srp_rport *rport = FUNC3(dev);
	struct Scsi_Host *shost = FUNC0(dev);
	struct srp_internal *i = FUNC2(shost->transportt);

	if (i->f->rport_delete) {
		i->f->rport_delete(rport);
		return count;
	} else {
		return -ENOSYS;
	}
}