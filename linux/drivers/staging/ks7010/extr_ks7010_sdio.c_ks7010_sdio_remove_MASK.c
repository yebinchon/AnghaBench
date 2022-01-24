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
struct sdio_func {int dummy; } ;
struct ks_wlan_private {int /*<<< orphan*/  net_dev; scalar_t__ wq; } ;
struct ks_sdio_card {struct ks_wlan_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_ENABLE_REG ; 
 int /*<<< orphan*/  INT_PENDING_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_sdio_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 struct ks_sdio_card* FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sdio_func*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC14 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct sdio_func *func)
{
	int ret;
	struct ks_sdio_card *card;
	struct ks_wlan_private *priv;

	card = FUNC8(func);

	if (!card)
		return;

	priv = card->priv;
	if (!priv)
		goto err_free_card;

	FUNC5(priv->net_dev);

	/* interrupt disable */
	FUNC6(func);
	FUNC12(func, 0, INT_ENABLE_REG, &ret);
	FUNC12(func, 0xff, INT_PENDING_REG, &ret);
	FUNC9(func);

	ret = FUNC13(func);
	if (ret)	/* memory allocation failure */
		goto err_free_card;

	if (priv->wq) {
		FUNC1(priv->wq);
		FUNC0(priv->wq);
	}

	FUNC3(priv);

	FUNC15(priv->net_dev);

	FUNC14(priv);
	FUNC2(priv->net_dev);
	card->priv = NULL;

	FUNC6(func);
	FUNC10(func);
	FUNC7(func);
	FUNC9(func);
err_free_card:
	FUNC11(func, NULL);
	FUNC4(card);
}