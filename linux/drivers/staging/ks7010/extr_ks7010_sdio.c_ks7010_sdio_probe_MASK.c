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
struct sdio_func {int device; int /*<<< orphan*/  dev; int /*<<< orphan*/  vendor; int /*<<< orphan*/  class; int /*<<< orphan*/  cur_blksize; TYPE_2__* card; } ;
struct sdio_device_id {int dummy; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rw_dwork; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev_state; } ;
struct ks_sdio_card {struct sdio_func* func; struct ks_wlan_private* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  multi_block; } ;
struct TYPE_4__ {TYPE_1__ cccr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_BOOT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS7010_IO_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ks_sdio_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct ks_wlan_private*,struct ks_sdio_card*,struct net_device*) ; 
 int /*<<< orphan*/  ks7010_rw_function ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,struct ks_wlan_private*) ; 
 int FUNC12 (struct sdio_func*) ; 
 int FUNC13 (struct ks_sdio_card*) ; 
 struct ks_sdio_card* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 struct ks_wlan_private* FUNC16 (struct net_device*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC19 (struct sdio_func*) ; 
 int FUNC20 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC21 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC22 (struct sdio_func*) ; 
 int FUNC23 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct sdio_func*,struct ks_sdio_card*) ; 

__attribute__((used)) static int FUNC25(struct sdio_func *func,
			     const struct sdio_device_id *device)
{
	struct ks_wlan_private *priv = NULL;
	struct net_device *netdev = NULL;
	struct ks_sdio_card *card;
	int ret;

	card = FUNC14(sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->func = func;

	FUNC18(func);

	ret = FUNC23(func, KS7010_IO_BLOCK_SIZE);
	if (ret)
		goto err_free_card;

	FUNC5(&card->func->dev, "multi_block=%d sdio_set_block_size()=%d %d\n",
		func->card->cccr.multi_block, func->cur_blksize, ret);

	ret = FUNC20(func);
	if (ret)
		goto err_free_card;

	ret = FUNC12(func);
	if (ret)
		goto err_disable_func;

	FUNC21(func);

	FUNC24(func, card);

	FUNC5(&card->func->dev, "class = 0x%X, vendor = 0x%X, device = 0x%X\n",
		func->class, func->vendor, func->device);

	/* private memory allocate */
	netdev = FUNC2(sizeof(*priv));
	if (!netdev) {
		FUNC6(&card->func->dev, "Unable to alloc new net device\n");
		goto err_release_irq;
	}

	ret = FUNC4(netdev, "wlan%d");
	if (ret < 0) {
		FUNC6(&card->func->dev, "Couldn't get name!\n");
		goto err_free_netdev;
	}

	priv = FUNC16(netdev);

	card->priv = priv;
	FUNC1(netdev, &card->func->dev);

	FUNC10(priv, card, netdev);

	ret = FUNC13(card);
	if (ret) {
		FUNC15(priv->net_dev,
			   "firmware load failed !! ret = %d\n", ret);
		goto err_free_netdev;
	}

	FUNC11(func, priv);

	priv->dev_state = DEVICE_STATE_BOOT;

	priv->wq = FUNC3("wq", WQ_MEM_RECLAIM, 1);
	if (!priv->wq) {
		FUNC15(priv->net_dev, "create_workqueue failed !!\n");
		goto err_free_netdev;
	}

	FUNC0(&priv->rw_dwork, ks7010_rw_function);
	FUNC9(priv);

	ret = FUNC17(priv->net_dev);
	if (ret)
		goto err_free_netdev;

	return 0;

 err_free_netdev:
	FUNC7(netdev);
 err_release_irq:
	FUNC18(func);
	FUNC22(func);
 err_disable_func:
	FUNC19(func);
 err_free_card:
	FUNC21(func);
	FUNC24(func, NULL);
	FUNC8(card);

	return -ENODEV;
}