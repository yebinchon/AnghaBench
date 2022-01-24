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
struct pps_device {int /*<<< orphan*/  dev; } ;
struct pps_bind_args {scalar_t__ edge; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct pps_device* pps_kc_hardpps_dev ; 
 int /*<<< orphan*/  pps_kc_hardpps_lock ; 
 scalar_t__ pps_kc_hardpps_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct pps_device *pps, struct pps_bind_args *bind_args)
{
	/* Check if another consumer is already bound */
	FUNC2(&pps_kc_hardpps_lock);

	if (bind_args->edge == 0)
		if (pps_kc_hardpps_dev == pps) {
			pps_kc_hardpps_mode = 0;
			pps_kc_hardpps_dev = NULL;
			FUNC3(&pps_kc_hardpps_lock);
			FUNC1(pps->dev, "unbound kernel"
					" consumer\n");
		} else {
			FUNC3(&pps_kc_hardpps_lock);
			FUNC0(pps->dev, "selected kernel consumer"
					" is not bound\n");
			return -EINVAL;
		}
	else
		if (pps_kc_hardpps_dev == NULL ||
				pps_kc_hardpps_dev == pps) {
			pps_kc_hardpps_mode = bind_args->edge;
			pps_kc_hardpps_dev = pps;
			FUNC3(&pps_kc_hardpps_lock);
			FUNC1(pps->dev, "bound kernel consumer: "
				"edge=0x%x\n", bind_args->edge);
		} else {
			FUNC3(&pps_kc_hardpps_lock);
			FUNC0(pps->dev, "another kernel consumer"
					" is already bound\n");
			return -EINVAL;
		}

	return 0;
}