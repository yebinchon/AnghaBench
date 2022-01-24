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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  rx_q; } ;
struct nfcmrvl_private {TYPE_1__ fw_dnld; TYPE_2__* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  cmd_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void	FUNC5(struct nfcmrvl_private *priv,
				   struct sk_buff *skb)
{
	/* Discard command timer */
	if (FUNC4(&priv->ndev->cmd_timer))
		FUNC1(&priv->ndev->cmd_timer);

	/* Allow next command */
	FUNC0(&priv->ndev->cmd_cnt, 1);

	/* Queue and trigger rx work */
	FUNC3(&priv->fw_dnld.rx_q, skb);
	FUNC2(priv->fw_dnld.rx_wq, &priv->fw_dnld.rx_work);
}