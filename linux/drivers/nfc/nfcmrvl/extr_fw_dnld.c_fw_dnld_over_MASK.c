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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  timer; int /*<<< orphan*/ * binary_config; int /*<<< orphan*/ * header; int /*<<< orphan*/ * fw; } ;
struct nfcmrvl_private {TYPE_2__ fw_dnld; TYPE_1__* ndev; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  cmd_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfcmrvl_private *priv, u32 error)
{
	if (priv->fw_dnld.fw) {
		FUNC5(priv->fw_dnld.fw);
		priv->fw_dnld.fw = NULL;
		priv->fw_dnld.header = NULL;
		priv->fw_dnld.binary_config = NULL;
	}

	FUNC0(&priv->ndev->cmd_cnt, 0);

	if (FUNC6(&priv->ndev->cmd_timer))
		FUNC1(&priv->ndev->cmd_timer);

	if (FUNC6(&priv->fw_dnld.timer))
		FUNC1(&priv->fw_dnld.timer);

	FUNC3(priv->dev, "FW loading over (%d)]\n", error);

	if (error != 0) {
		/* failed, halt the chip to avoid power consumption */
		FUNC4(priv);
	}

	FUNC2(priv->ndev->nfc_dev, priv->fw_dnld.name, error);
}