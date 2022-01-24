#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw,
				 struct ieee80211_chanctx_conf *ctx)
{
	FUNC2(DEBUG_MAC80211, "mac80211 add chanctx %d (type %d)",
		     FUNC1(ctx->def.chan->center_freq),
		     FUNC0(&ctx->def));
	return 0;
}