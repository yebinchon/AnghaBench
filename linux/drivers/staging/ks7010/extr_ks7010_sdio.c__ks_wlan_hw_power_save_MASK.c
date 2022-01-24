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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int /*<<< orphan*/  status; int /*<<< orphan*/  snooze_guard; int /*<<< orphan*/  confirm_wait; } ;
struct TYPE_3__ {scalar_t__ power_mgmt; scalar_t__ operation_mode; } ;
struct ks_wlan_private {scalar_t__ dev_state; int /*<<< orphan*/  rw_dwork; int /*<<< orphan*/  wq; TYPE_2__ psstatus; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  connect_status; TYPE_1__ reg; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_SLEEP ; 
 int /*<<< orphan*/  GCR_B_DOZE ; 
 int /*<<< orphan*/  GCR_B_REG ; 
 int /*<<< orphan*/  INT_PENDING_REG ; 
 scalar_t__ MODE_INFRASTRUCTURE ; 
 scalar_t__ POWER_MGMT_ACTIVE ; 
 scalar_t__ PS_SNOOZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ks_wlan_private*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ks_wlan_private*) ; 
 scalar_t__ FUNC9 (struct ks_wlan_private*) ; 

__attribute__((used)) static void FUNC10(struct ks_wlan_private *priv)
{
	u8 byte;
	int ret;

	if (priv->reg.power_mgmt == POWER_MGMT_ACTIVE)
		return;

	if (priv->reg.operation_mode != MODE_INFRASTRUCTURE)
		return;

	if (!FUNC2(priv->connect_status))
		return;

	if (priv->dev_state != DEVICE_STATE_SLEEP)
		return;

	if (FUNC0(&priv->psstatus.status) == PS_SNOOZE)
		return;

	FUNC5(priv->net_dev,
		   "STATUS:\n"
		   "- psstatus.status = %d\n"
		   "- psstatus.confirm_wait = %d\n"
		   "- psstatus.snooze_guard = %d\n"
		   "- txq_count = %d\n",
		   FUNC0(&priv->psstatus.status),
		   FUNC0(&priv->psstatus.confirm_wait),
		   FUNC0(&priv->psstatus.snooze_guard),
		   FUNC8(priv));

	if (FUNC0(&priv->psstatus.confirm_wait) ||
	    FUNC0(&priv->psstatus.snooze_guard) ||
	    FUNC9(priv)) {
		FUNC7(priv->wq, &priv->rw_dwork, 0);
		return;
	}

	ret = FUNC3(priv, INT_PENDING_REG, &byte);
	if (ret) {
		FUNC6(priv->net_dev, "read INT_PENDING_REG\n");
		goto queue_delayed_work;
	}
	if (byte)
		goto queue_delayed_work;

	ret = FUNC4(priv, GCR_B_REG, GCR_B_DOZE);
	if (ret) {
		FUNC6(priv->net_dev, "write GCR_B_REG\n");
		goto queue_delayed_work;
	}
	FUNC1(&priv->psstatus.status, PS_SNOOZE);

	return;

queue_delayed_work:
	FUNC7(priv->wq, &priv->rw_dwork, 1);
}