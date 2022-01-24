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
struct device {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device **devs,
			   char **pd_names)
{
	size_t num_pds = 0;
	int ret;
	int i;

	if (!pd_names)
		return 0;

	while (pd_names[num_pds])
		num_pds++;

	for (i = 0; i < num_pds; i++) {
		devs[i] = FUNC2(dev, pd_names[i]);
		if (FUNC0(devs[i])) {
			ret = FUNC1(devs[i]) ? : -ENODATA;
			goto unroll_attach;
		}
	}

	return num_pds;

unroll_attach:
	for (i--; i >= 0; i--)
		FUNC3(devs[i], false);

	return ret;
}