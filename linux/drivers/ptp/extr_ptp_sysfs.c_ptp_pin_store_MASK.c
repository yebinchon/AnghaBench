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
struct ptp_clock {int /*<<< orphan*/  pincfg_mux; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 struct ptp_clock* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ptp_clock*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ptp_clock*,int,unsigned int,unsigned int) ; 
 int FUNC5 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct ptp_clock *ptp = FUNC0(dev);
	unsigned int func, chan;
	int cnt, err, index;

	cnt = FUNC5(buf, "%u %u", &func, &chan);
	if (cnt != 2)
		return -EINVAL;

	index = FUNC3(ptp, attr->attr.name);
	if (index < 0)
		return -EINVAL;

	if (FUNC1(&ptp->pincfg_mux))
		return -ERESTARTSYS;
	err = FUNC4(ptp, index, func, chan);
	FUNC2(&ptp->pincfg_mux);
	if (err)
		return err;

	return count;
}