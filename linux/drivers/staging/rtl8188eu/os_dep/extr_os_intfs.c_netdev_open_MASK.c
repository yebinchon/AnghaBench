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
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  hw_init_mutex; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *pnetdev)
{
	int ret;
	struct adapter *padapter = (struct adapter *)FUNC3(pnetdev);

	if (FUNC1(&padapter->hw_init_mutex))
		return -ERESTARTSYS;
	ret = FUNC0(pnetdev);
	FUNC2(&padapter->hw_init_mutex);
	return ret;
}