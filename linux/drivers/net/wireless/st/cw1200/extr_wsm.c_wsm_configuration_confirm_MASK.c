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
struct wsm_configuration {TYPE_1__* txPowerRange; void* supportedRateMask; int /*<<< orphan*/  dot11FrequencyBandsSupported; int /*<<< orphan*/  dot11StationId; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_2__ {void* stepping; void* max_power_level; void* min_power_level; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wsm_buf*,int) ; 
 int WSM_STATUS_SUCCESS ; 

__attribute__((used)) static int FUNC5(struct cw1200_common *priv,
				     struct wsm_configuration *arg,
				     struct wsm_buf *buf)
{
	int i;
	int status;

	status = FUNC2(buf);
	if (FUNC0(status != WSM_STATUS_SUCCESS))
		return -EINVAL;

	FUNC1(buf, arg->dot11StationId, ETH_ALEN);
	arg->dot11FrequencyBandsSupported = FUNC3(buf);
	FUNC4(buf, 1);
	arg->supportedRateMask = FUNC2(buf);
	for (i = 0; i < 2; ++i) {
		arg->txPowerRange[i].min_power_level = FUNC2(buf);
		arg->txPowerRange[i].max_power_level = FUNC2(buf);
		arg->txPowerRange[i].stepping = FUNC2(buf);
	}
	return 0;

underflow:
	FUNC0(1);
	return -EINVAL;
}