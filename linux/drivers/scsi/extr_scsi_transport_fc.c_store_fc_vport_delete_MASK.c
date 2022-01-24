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
struct fc_vport {int flags; int /*<<< orphan*/  vport_delete_work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 int FC_VPORT_CREATING ; 
 int FC_VPORT_DEL ; 
 int FC_VPORT_DELETING ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct fc_vport* FUNC3 (struct device*) ; 
 struct Scsi_Host* FUNC4 (struct fc_vport*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct fc_vport *vport = FUNC3(dev);
	struct Scsi_Host *shost = FUNC4(vport);
	unsigned long flags;

	FUNC1(shost->host_lock, flags);
	if (vport->flags & (FC_VPORT_DEL | FC_VPORT_CREATING | FC_VPORT_DELETING)) {
		FUNC2(shost->host_lock, flags);
		return -EBUSY;
	}
	vport->flags |= FC_VPORT_DELETING;
	FUNC2(shost->host_lock, flags);

	FUNC0(shost, &vport->vport_delete_work);
	return count;
}