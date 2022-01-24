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
typedef  int u32 ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_TACTIVATE ; 
 int PA_TACTIVATE_TIME_UNIT_US ; 
 int /*<<< orphan*/  RX_MIN_ACTIVATETIME_CAPABILITY ; 
 int RX_MIN_ACTIVATETIME_UNIT_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ufs_hba *hba)
{
	int ret = 0;
	u32 peer_rx_min_activatetime = 0, tuned_pa_tactivate;

	ret = FUNC3(hba,
				  FUNC1(
					RX_MIN_ACTIVATETIME_CAPABILITY,
					FUNC2(0)),
				  &peer_rx_min_activatetime);
	if (ret)
		goto out;

	/* make sure proper unit conversion is applied */
	tuned_pa_tactivate =
		((peer_rx_min_activatetime * RX_MIN_ACTIVATETIME_UNIT_US)
		 / PA_TACTIVATE_TIME_UNIT_US);
	ret = FUNC4(hba, FUNC0(PA_TACTIVATE),
			     tuned_pa_tactivate);

out:
	return ret;
}