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
struct brcmstb_thermal_priv {int /*<<< orphan*/  thermal; int /*<<< orphan*/  dev; scalar_t__ tmon_base; } ;

/* Variables and functions */
 scalar_t__ AVS_TMON_STATUS ; 
 int AVS_TMON_STATUS_data_msk ; 
 int AVS_TMON_STATUS_data_shift ; 
 int AVS_TMON_STATUS_valid_msk ; 
 int EIO ; 
 int FUNC0 (scalar_t__) ; 
 long FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void *data, int *temp)
{
	struct brcmstb_thermal_priv *priv = data;
	u32 val;
	long t;

	val = FUNC0(priv->tmon_base + AVS_TMON_STATUS);

	if (!(val & AVS_TMON_STATUS_valid_msk)) {
		FUNC2(priv->dev, "reading not valid\n");
		return -EIO;
	}

	val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;

	t = FUNC1(priv->thermal, val);
	if (t < 0)
		*temp = 0;
	else
		*temp = t;

	return 0;
}