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
typedef  int /*<<< orphan*/  u8 ;
struct wl1271 {int dummy; } ;
struct conf_tx_rate_class {int /*<<< orphan*/  aflags; int /*<<< orphan*/  long_retry_limit; int /*<<< orphan*/  short_retry_limit; int /*<<< orphan*/  enabled_rates; } ;
struct TYPE_2__ {int /*<<< orphan*/  aflags; int /*<<< orphan*/  long_retry_limit; int /*<<< orphan*/  short_retry_limit; void* enabled_rates; } ;
struct acx_rate_policy {void* rate_policy_idx; TYPE_1__ rate_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RATE_POLICY ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_rate_policy*) ; 
 struct acx_rate_policy* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_rate_policy*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct conf_tx_rate_class *c,
		      u8 idx)
{
	struct acx_rate_policy *acx;
	int ret = 0;

	FUNC4(DEBUG_ACX, "acx ap rate policy %d rates 0x%x",
		     idx, c->enabled_rates);

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->rate_policy.enabled_rates = FUNC0(c->enabled_rates);
	acx->rate_policy.short_retry_limit = c->short_retry_limit;
	acx->rate_policy.long_retry_limit = c->long_retry_limit;
	acx->rate_policy.aflags = c->aflags;

	acx->rate_policy_idx = FUNC0(idx);

	ret = FUNC3(wl, ACX_RATE_POLICY, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("Setting of ap rate policy failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}