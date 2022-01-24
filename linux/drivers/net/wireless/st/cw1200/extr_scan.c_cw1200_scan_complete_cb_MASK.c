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
struct wsm_scan_complete {int dummy; } ;
struct TYPE_2__ {int status; int /*<<< orphan*/  timeout; } ;
struct cw1200_common {scalar_t__ mode; TYPE_1__ scan; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct cw1200_common *priv,
				struct wsm_scan_complete *arg)
{
	if (priv->mode == NL80211_IFTYPE_UNSPECIFIED)
		/* STA is stopped. */
		return;

	if (FUNC0(&priv->scan.timeout) > 0) {
		priv->scan.status = 1;
		FUNC1(priv->workqueue, &priv->scan.timeout, 0);
	}
}