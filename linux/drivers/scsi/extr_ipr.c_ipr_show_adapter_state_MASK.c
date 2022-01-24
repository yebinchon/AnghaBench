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
struct ipr_ioa_cfg {TYPE_2__* host; TYPE_1__* hrrq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {scalar_t__ ioa_is_dead; } ;

/* Variables and functions */
 size_t IPR_INIT_HRRQ ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
	unsigned long lock_flags = 0;
	int len;

	FUNC2(ioa_cfg->host->host_lock, lock_flags);
	if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead)
		len = FUNC1(buf, PAGE_SIZE, "offline\n");
	else
		len = FUNC1(buf, PAGE_SIZE, "online\n");
	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	return len;
}