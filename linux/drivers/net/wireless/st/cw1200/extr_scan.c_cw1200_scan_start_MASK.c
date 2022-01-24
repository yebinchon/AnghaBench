#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wsm_scan {int num_channels; TYPE_2__* ch; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  in_progress; } ;
struct cw1200_common {int join_status; TYPE_3__ scan; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  pm_state; int /*<<< orphan*/  recent_scan; int /*<<< orphan*/  clear_recent_scan_work; TYPE_1__* hw; } ;
struct TYPE_5__ {scalar_t__ max_chan_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
#define  CW1200_JOIN_STATUS_JOINING 129 
#define  CW1200_JOIN_STATUS_PRE_STA 128 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cw1200_common*,struct wsm_scan*) ; 

__attribute__((used)) static int FUNC8(struct cw1200_common *priv, struct wsm_scan *scan)
{
	int ret, i;
	int tmo = 2000;

	switch (priv->join_status) {
	case CW1200_JOIN_STATUS_PRE_STA:
	case CW1200_JOIN_STATUS_JOINING:
		return -EBUSY;
	default:
		break;
	}

	FUNC6(priv->hw->wiphy, "[SCAN] hw req, type %d, %d channels, flags: 0x%x.\n",
		  scan->type, scan->num_channels, scan->flags);

	for (i = 0; i < scan->num_channels; ++i)
		tmo += scan->ch[i].max_chan_time + 10;

	FUNC1(&priv->clear_recent_scan_work);
	FUNC0(&priv->scan.in_progress, 1);
	FUNC0(&priv->recent_scan, 1);
	FUNC2(&priv->pm_state, FUNC4(tmo));
	FUNC5(priv->workqueue, &priv->scan.timeout,
			   FUNC4(tmo));
	ret = FUNC7(priv, scan);
	if (ret) {
		FUNC0(&priv->scan.in_progress, 0);
		FUNC1(&priv->scan.timeout);
		FUNC3(priv);
	}
	return ret;
}