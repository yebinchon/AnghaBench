#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct transport_container {int dummy; } ;
struct spi_internal {TYPE_1__* f; } ;
struct kobject {int dummy; } ;
struct device {struct kobject kobj; } ;
struct attribute {int mode; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {struct attribute attr; } ;
struct TYPE_3__ {scalar_t__ set_signalling; } ;

/* Variables and functions */
 int S_IWUSR ; 
 TYPE_2__ dev_attr_signalling ; 
 int FUNC0 (struct kobject*,struct attribute*,int) ; 
 struct spi_internal* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct transport_container *tc,
			      struct device *dev,
			      struct device *cdev)
{
	struct kobject *kobj = &cdev->kobj;
	struct Scsi_Host *shost = FUNC2(cdev);
	struct spi_internal *si = FUNC1(shost->transportt);
	struct attribute *attr = &dev_attr_signalling.attr;
	int rc = 0;

	if (si->f->set_signalling)
		rc = FUNC0(kobj, attr, attr->mode | S_IWUSR);

	return rc;
}