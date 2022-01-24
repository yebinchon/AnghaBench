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
struct cw1200_common {int /*<<< orphan*/  bh_work; int /*<<< orphan*/  bh_workqueue; int /*<<< orphan*/  bh_evt_wq; int /*<<< orphan*/  bh_wq; scalar_t__ buf_id_rx; scalar_t__ buf_id_tx; scalar_t__ hw_bufs_used; scalar_t__ bh_error; int /*<<< orphan*/  bh_suspend; int /*<<< orphan*/  bh_term; int /*<<< orphan*/  bh_tx; int /*<<< orphan*/  bh_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_BH_RESUMED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WQ_CPU_INTENSIVE ; 
 int WQ_HIGHPRI ; 
 int WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cw1200_bh_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct cw1200_common *priv)
{
	int err = 0;
	/* Realtime workqueue */
	priv->bh_workqueue = FUNC2("cw1200_bh",
				WQ_MEM_RECLAIM | WQ_HIGHPRI
				| WQ_CPU_INTENSIVE, 1);

	if (!priv->bh_workqueue)
		return -ENOMEM;

	FUNC0(&priv->bh_work, cw1200_bh_work);

	FUNC5("[BH] register.\n");

	FUNC3(&priv->bh_rx, 0);
	FUNC3(&priv->bh_tx, 0);
	FUNC3(&priv->bh_term, 0);
	FUNC3(&priv->bh_suspend, CW1200_BH_RESUMED);
	priv->bh_error = 0;
	priv->hw_bufs_used = 0;
	priv->buf_id_tx = 0;
	priv->buf_id_rx = 0;
	FUNC4(&priv->bh_wq);
	FUNC4(&priv->bh_evt_wq);

	err = !FUNC6(priv->bh_workqueue, &priv->bh_work);
	FUNC1(err);
	return err;
}