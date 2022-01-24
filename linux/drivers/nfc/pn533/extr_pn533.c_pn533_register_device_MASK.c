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
typedef  int /*<<< orphan*/  u32 ;
struct pn533_phy_ops {int dummy; } ;
struct pn533_frame_ops {int /*<<< orphan*/  tx_tail_len; scalar_t__ tx_header_len; } ;
struct pn533 {int protocol_type; int /*<<< orphan*/ * wq; int /*<<< orphan*/  nfc_dev; struct pn533_frame_ops* ops; int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  fragment_skb; int /*<<< orphan*/  resp_q; int /*<<< orphan*/  listen_timer; int /*<<< orphan*/  rf_work; int /*<<< orphan*/  poll_work; int /*<<< orphan*/  mi_tm_tx_work; int /*<<< orphan*/  mi_tm_rx_work; int /*<<< orphan*/  tg_work; int /*<<< orphan*/  mi_tx_work; int /*<<< orphan*/  mi_rx_work; int /*<<< orphan*/  cmd_complete_work; int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  device_type; struct device* dev; struct pn533_phy_ops* phy_ops; void* phy; } ;
struct device {int dummy; } ;
typedef  enum pn533_protocol_type { ____Placeholder_pn533_protocol_type } pn533_protocol_type ;

/* Variables and functions */
 int ENOMEM ; 
 struct pn533* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PN533_CMD_DATAEXCH_HEAD_LEN ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pn533*) ; 
 struct pn533* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct pn533*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  pn533_listen_mode_timer ; 
 int /*<<< orphan*/  pn533_nfc_ops ; 
 struct pn533_frame_ops pn533_std_frame_ops ; 
 int /*<<< orphan*/  pn533_wq_cmd ; 
 int /*<<< orphan*/  pn533_wq_cmd_complete ; 
 int /*<<< orphan*/  pn533_wq_mi_recv ; 
 int /*<<< orphan*/  pn533_wq_mi_send ; 
 int /*<<< orphan*/  pn533_wq_poll ; 
 int /*<<< orphan*/  pn533_wq_rf ; 
 int /*<<< orphan*/  pn533_wq_tg_get_data ; 
 int /*<<< orphan*/  pn533_wq_tm_mi_recv ; 
 int /*<<< orphan*/  pn533_wq_tm_mi_send ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct pn533 *FUNC16(u32 device_type,
				u32 protocols,
				enum pn533_protocol_type protocol_type,
				void *phy,
				struct pn533_phy_ops *phy_ops,
				struct pn533_frame_ops *fops,
				struct device *dev,
				struct device *parent)
{
	struct pn533 *priv;
	int rc = -ENOMEM;

	priv = FUNC7(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->phy = phy;
	priv->phy_ops = phy_ops;
	priv->dev = dev;
	if (fops != NULL)
		priv->ops = fops;
	else
		priv->ops = &pn533_std_frame_ops;

	priv->protocol_type = protocol_type;
	priv->device_type = device_type;

	FUNC8(&priv->cmd_lock);

	FUNC3(&priv->cmd_work, pn533_wq_cmd);
	FUNC3(&priv->cmd_complete_work, pn533_wq_cmd_complete);
	FUNC3(&priv->mi_rx_work, pn533_wq_mi_recv);
	FUNC3(&priv->mi_tx_work, pn533_wq_mi_send);
	FUNC3(&priv->tg_work, pn533_wq_tg_get_data);
	FUNC3(&priv->mi_tm_rx_work, pn533_wq_tm_mi_recv);
	FUNC3(&priv->mi_tm_tx_work, pn533_wq_tm_mi_send);
	FUNC1(&priv->poll_work, pn533_wq_poll);
	FUNC3(&priv->rf_work, pn533_wq_rf);
	priv->wq = FUNC4("pn533", 0);
	if (priv->wq == NULL)
		goto error;

	FUNC15(&priv->listen_timer, pn533_listen_mode_timer, 0);

	FUNC14(&priv->resp_q);
	FUNC14(&priv->fragment_skb);

	FUNC2(&priv->cmd_queue);

	priv->nfc_dev = FUNC9(&pn533_nfc_ops, protocols,
					   priv->ops->tx_header_len +
					   PN533_CMD_DATAEXCH_HEAD_LEN,
					   priv->ops->tx_tail_len);
	if (!priv->nfc_dev) {
		rc = -ENOMEM;
		goto destroy_wq;
	}

	FUNC13(priv->nfc_dev, parent);
	FUNC12(priv->nfc_dev, priv);

	rc = FUNC11(priv->nfc_dev);
	if (rc)
		goto free_nfc_dev;

	return priv;

free_nfc_dev:
	FUNC10(priv->nfc_dev);

destroy_wq:
	FUNC5(priv->wq);
error:
	FUNC6(priv);
	return FUNC0(rc);
}