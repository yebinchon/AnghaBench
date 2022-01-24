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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ input_buffers; } ;
struct cw1200_common {scalar_t__ hw_bufs_used; int device_can_sleep; int hw_type; int bh_error; int /*<<< orphan*/  hwbus_priv; TYPE_2__* hwbus_ops; TYPE_1__ wsm_caps; int /*<<< orphan*/  bh_rx; int /*<<< orphan*/  bh_evt_wq; int /*<<< orphan*/  bh_suspend; TYPE_3__* hw; int /*<<< orphan*/  bh_wq; scalar_t__ powersave_enabled; int /*<<< orphan*/  recent_scan; int /*<<< orphan*/  pending_frame_id; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  bh_term; int /*<<< orphan*/  bh_tx; } ;
typedef  int /*<<< orphan*/  dummy ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CW1200_BH_RESUME ; 
 int /*<<< orphan*/  CW1200_BH_RESUMED ; 
 int /*<<< orphan*/  CW1200_BH_SUSPENDED ; 
 long ERESTARTSYS ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  ST90TDS_CONFIG_REG_ID ; 
 int /*<<< orphan*/  ST90TDS_CONTROL_REG_ID ; 
 int ST90TDS_CONT_NEXT_LEN_MASK ; 
 unsigned long WSM_CMD_LAST_CHANCE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct cw1200_common*,int*) ; 
 int FUNC7 (struct cw1200_common*,int*,int*) ; 
 int FUNC8 (struct cw1200_common*,int*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 long FUNC18 (int /*<<< orphan*/ ,int) ; 
 long FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC23(void *arg)
{
	struct cw1200_common *priv = arg;
	int rx, tx, term, suspend;
	u16 ctrl_reg = 0;
	int tx_allowed;
	int pending_tx = 0;
	int tx_burst;
	long status;
	u32 dummy;
	int ret;

	for (;;) {
		if (!priv->hw_bufs_used &&
		    priv->powersave_enabled &&
		    !priv->device_can_sleep &&
		    !FUNC3(&priv->recent_scan)) {
			status = 1 * HZ;
			FUNC12("[BH] Device wakedown. No data.\n");
			FUNC11(priv, ST90TDS_CONTROL_REG_ID, 0);
			priv->device_can_sleep = true;
		} else if (priv->hw_bufs_used) {
			/* Interrupt loss detection */
			status = 1 * HZ;
		} else {
			status = MAX_SCHEDULE_TIMEOUT;
		}

		/* Dummy Read for SDIO retry mechanism*/
		if ((priv->hw_type != -1) &&
		    (FUNC3(&priv->bh_rx) == 0) &&
		    (FUNC3(&priv->bh_tx) == 0))
			FUNC10(priv, ST90TDS_CONFIG_REG_ID,
					&dummy, sizeof(dummy));

		FUNC12("[BH] waiting ...\n");
		status = FUNC19(priv->bh_wq, ({
				rx = FUNC5(&priv->bh_rx, 0);
				tx = FUNC5(&priv->bh_tx, 0);
				term = FUNC5(&priv->bh_term, 0);
				suspend = pending_tx ?
					0 : FUNC3(&priv->bh_suspend);
				(rx || tx || term || suspend || priv->bh_error);
			}), status);

		FUNC12("[BH] - rx: %d, tx: %d, term: %d, bh_err: %d, suspend: %d, status: %ld\n",
			 rx, tx, term, suspend, priv->bh_error, status);

		/* Did an error occur? */
		if ((status < 0 && status != -ERESTARTSYS) ||
		    term || priv->bh_error) {
			break;
		}
		if (!status) {  /* wait_event timed out */
			unsigned long timestamp = jiffies;
			long timeout;
			int pending = 0;
			int i;

			/* Check to see if we have any outstanding frames */
			if (priv->hw_bufs_used && (!rx || !tx)) {
				FUNC22(priv->hw->wiphy,
					   "Missed interrupt? (%d frames outstanding)\n",
					   priv->hw_bufs_used);
				rx = 1;

				/* Get a timestamp of "oldest" frame */
				for (i = 0; i < 4; ++i)
					pending += FUNC9(
						&priv->tx_queue[i],
						&timestamp,
						priv->pending_frame_id);

				/* Check if frame transmission is timed out.
				 * Add an extra second with respect to possible
				 * interrupt loss.
				 */
				timeout = timestamp +
					WSM_CMD_LAST_CHANCE_TIMEOUT +
					1 * HZ  -
					jiffies;

				/* And terminate BH thread if the frame is "stuck" */
				if (pending && timeout < 0) {
					FUNC22(priv->hw->wiphy,
						   "Timeout waiting for TX confirm (%d/%d pending, %ld vs %lu).\n",
						   priv->hw_bufs_used, pending,
						   timestamp, jiffies);
					break;
				}
			} else if (!priv->device_can_sleep &&
				   !FUNC3(&priv->recent_scan)) {
				FUNC12("[BH] Device wakedown. Timeout.\n");
				FUNC11(priv,
						    ST90TDS_CONTROL_REG_ID, 0);
				priv->device_can_sleep = true;
			}
			goto done;
		} else if (suspend) {
			FUNC12("[BH] Device suspend.\n");
			if (priv->powersave_enabled) {
				FUNC12("[BH] Device wakedown. Suspend.\n");
				FUNC11(priv,
						    ST90TDS_CONTROL_REG_ID, 0);
				priv->device_can_sleep = true;
			}

			FUNC4(&priv->bh_suspend, CW1200_BH_SUSPENDED);
			FUNC20(&priv->bh_evt_wq);
			status = FUNC18(priv->bh_wq,
							  CW1200_BH_RESUME == FUNC3(&priv->bh_suspend));
			if (status < 0) {
				FUNC21(priv->hw->wiphy,
					  "Failed to wait for resume: %ld.\n",
					  status);
				break;
			}
			FUNC12("[BH] Device resume.\n");
			FUNC4(&priv->bh_suspend, CW1200_BH_RESUMED);
			FUNC20(&priv->bh_evt_wq);
			FUNC2(1, &priv->bh_rx);
			goto done;
		}

	rx:
		tx += pending_tx;
		pending_tx = 0;

		if (FUNC6(priv, &ctrl_reg))
			break;

		/* Don't bother trying to rx unless we have data to read */
		if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK) {
			ret = FUNC7(priv, &ctrl_reg, &tx);
			if (ret < 0)
				break;
			/* Double up here if there's more data.. */
			if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK) {
				ret = FUNC7(priv, &ctrl_reg, &tx);
				if (ret < 0)
					break;
			}
		}

	tx:
		if (tx) {
			tx = 0;

			FUNC0(priv->hw_bufs_used > priv->wsm_caps.input_buffers);
			tx_burst = priv->wsm_caps.input_buffers - priv->hw_bufs_used;
			tx_allowed = tx_burst > 0;

			if (!tx_allowed) {
				/* Buffers full.  Ensure we process tx
				 * after we handle rx..
				 */
				pending_tx = tx;
				goto done_rx;
			}
			ret = FUNC8(priv, &pending_tx, &tx_burst);
			if (ret < 0)
				break;
			if (ret > 0) /* More to transmit */
				tx = ret;

			/* Re-read ctrl reg */
			if (FUNC6(priv, &ctrl_reg))
				break;
		}

	done_rx:
		if (priv->bh_error)
			break;
		if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK)
			goto rx;
		if (tx)
			goto tx;

	done:
		/* Re-enable device interrupts */
		priv->hwbus_ops->lock(priv->hwbus_priv);
		FUNC1(priv, 1);
		priv->hwbus_ops->unlock(priv->hwbus_priv);
	}

	/* Explicitly disable device interrupts */
	priv->hwbus_ops->lock(priv->hwbus_priv);
	FUNC1(priv, 0);
	priv->hwbus_ops->unlock(priv->hwbus_priv);

	if (!term) {
		FUNC13("[BH] Fatal error, exiting.\n");
		priv->bh_error = 1;
		/* TODO: schedule_work(recovery) */
	}
	return 0;
}