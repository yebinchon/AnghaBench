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
 int HIBERN8TIME_UNIT_US ; 
 int /*<<< orphan*/  PA_HIBERN8TIME ; 
 int PA_HIBERN8_TIME_UNIT_US ; 
 int /*<<< orphan*/  RX_HIBERN8TIME_CAPABILITY ; 
 int /*<<< orphan*/  TX_HIBERN8TIME_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ufs_hba *hba)
{
	int ret = 0;
	u32 local_tx_hibern8_time_cap = 0, peer_rx_hibern8_time_cap = 0;
	u32 max_hibern8_time, tuned_pa_hibern8time;

	ret = FUNC5(hba,
			     FUNC1(TX_HIBERN8TIME_CAPABILITY,
					FUNC3(0)),
				  &local_tx_hibern8_time_cap);
	if (ret)
		goto out;

	ret = FUNC6(hba,
				  FUNC1(RX_HIBERN8TIME_CAPABILITY,
					FUNC2(0)),
				  &peer_rx_hibern8_time_cap);
	if (ret)
		goto out;

	max_hibern8_time = FUNC4(local_tx_hibern8_time_cap,
			       peer_rx_hibern8_time_cap);
	/* make sure proper unit conversion is applied */
	tuned_pa_hibern8time = ((max_hibern8_time * HIBERN8TIME_UNIT_US)
				/ PA_HIBERN8_TIME_UNIT_US);
	ret = FUNC7(hba, FUNC0(PA_HIBERN8TIME),
			     tuned_pa_hibern8time);
out:
	return ret;
}