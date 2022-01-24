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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pps_device* pps_kc_hardpps_dev ; 
 int /*<<< orphan*/  pps_kc_hardpps_lock ; 
 scalar_t__ pps_kc_hardpps_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct pps_device *pps)
{
	FUNC1(&pps_kc_hardpps_lock);
	if (pps == pps_kc_hardpps_dev) {
		pps_kc_hardpps_mode = 0;
		pps_kc_hardpps_dev = NULL;
		FUNC2(&pps_kc_hardpps_lock);
		FUNC0(pps->dev, "unbound kernel consumer"
				" on device removal\n");
	} else
		FUNC2(&pps_kc_hardpps_lock);
}