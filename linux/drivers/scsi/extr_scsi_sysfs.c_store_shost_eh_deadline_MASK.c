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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int eh_deadline; int /*<<< orphan*/  host_lock; TYPE_2__* hostt; TYPE_1__* transportt; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  eh_host_reset_handler; } ;
struct TYPE_3__ {scalar_t__ eh_strategy_handler; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned long HZ ; 
 unsigned long UINT_MAX ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 scalar_t__ FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	int ret = -EINVAL;
	unsigned long deadline, flags;

	if (shost->transportt &&
	    (shost->transportt->eh_strategy_handler ||
	     !shost->hostt->eh_host_reset_handler))
		return ret;

	if (!FUNC6(buf, "off", FUNC5("off")))
		deadline = -1;
	else {
		ret = FUNC1(buf, 10, &deadline);
		if (ret)
			return ret;
		if (deadline * HZ > UINT_MAX)
			return -EINVAL;
	}

	FUNC3(shost->host_lock, flags);
	if (FUNC2(shost))
		ret = -EBUSY;
	else {
		if (deadline == -1)
			shost->eh_deadline = -1;
		else
			shost->eh_deadline = deadline * HZ;

		ret = count;
	}
	FUNC4(shost->host_lock, flags);

	return ret;
}