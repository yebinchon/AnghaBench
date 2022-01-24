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
typedef  int u8 ;
struct sdio_func {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  wakeup_wait; } ;
struct ks_wlan_private {scalar_t__ dev_state; int /*<<< orphan*/  rw_dwork; int /*<<< orphan*/  wq; TYPE_1__ psstatus; int /*<<< orphan*/  net_dev; scalar_t__ wakeup_count; } ;
struct ks_sdio_card {struct ks_wlan_private* priv; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_BOOT ; 
 int GCR_B_ACTIVE ; 
 int /*<<< orphan*/  GCR_B_REG ; 
 int INT_GCR_B ; 
 int /*<<< orphan*/  INT_PENDING_REG ; 
 scalar_t__ PS_SNOOZE ; 
 int /*<<< orphan*/  PS_WAKEUP ; 
 int RSIZE_MASK ; 
 int WSTATUS_MASK ; 
 int /*<<< orphan*/  WSTATUS_RSIZE_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ks_wlan_private*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ks_sdio_card* FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct ks_wlan_private*) ; 
 scalar_t__ FUNC10 (struct ks_wlan_private*) ; 

__attribute__((used)) static void FUNC11(struct sdio_func *func)
{
	int ret;
	struct ks_sdio_card *card;
	struct ks_wlan_private *priv;
	u8 status, rsize, byte;

	card = FUNC8(func);
	priv = card->priv;

	if (priv->dev_state < DEVICE_STATE_BOOT)
		goto queue_delayed_work;

	ret = FUNC3(priv, INT_PENDING_REG, &status);
	if (ret) {
		FUNC6(priv->net_dev, "read INT_PENDING_REG\n");
		goto queue_delayed_work;
	}

	/* schedule task for interrupt status */
	/* bit7 -> Write General Communication B register */
	/* read (General Communication B register) */
	/* bit5 -> Write Status Idle */
	/* bit2 -> Read Status Busy  */
	if (status & INT_GCR_B ||
	    FUNC0(&priv->psstatus.status) == PS_SNOOZE) {
		ret = FUNC3(priv, GCR_B_REG, &byte);
		if (ret) {
			FUNC6(priv->net_dev, "read GCR_B_REG\n");
			goto queue_delayed_work;
		}
		if (byte == GCR_B_ACTIVE) {
			if (FUNC0(&priv->psstatus.status) == PS_SNOOZE) {
				FUNC1(&priv->psstatus.status, PS_WAKEUP);
				priv->wakeup_count = 0;
			}
			FUNC2(&priv->psstatus.wakeup_wait);
		}
	}

	do {
		/* read (WriteStatus/ReadDataSize FN1:00_0014) */
		ret = FUNC3(priv, WSTATUS_RSIZE_REG, &byte);
		if (ret) {
			FUNC6(priv->net_dev, "read WSTATUS_RSIZE_REG\n");
			goto queue_delayed_work;
		}
		rsize = byte & RSIZE_MASK;
		if (rsize != 0)		/* Read schedule */
			FUNC4(priv, (size_t)(rsize << 4));

		if (byte & WSTATUS_MASK) {
			if (FUNC0(&priv->psstatus.status) == PS_SNOOZE) {
				if (FUNC10(priv)) {
					FUNC5(priv);
					FUNC7(priv->wq,
							   &priv->rw_dwork, 1);
					return;
				}
			} else {
				FUNC9(priv);
			}
		}
	} while (rsize);

queue_delayed_work:
	FUNC7(priv->wq, &priv->rw_dwork, 0);
}