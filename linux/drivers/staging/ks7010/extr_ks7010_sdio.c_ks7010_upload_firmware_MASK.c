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
typedef  scalar_t__ u8 ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct ks_wlan_private {int /*<<< orphan*/  net_dev; } ;
struct ks_sdio_card {struct ks_wlan_private* priv; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  GCR_A_REG ; 
 scalar_t__ GCR_A_RUN ; 
 int /*<<< orphan*/  ROM_FILE ; 
 int FUNC0 (struct ks_wlan_private*,struct firmware const*) ; 
 int FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct sdio_func* FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct ks_sdio_card *card)
{
	struct ks_wlan_private *priv = card->priv;
	struct sdio_func *func = FUNC2(priv);
	unsigned int n;
	u8 byte = 0;
	int ret;
	const struct firmware *fw_entry = NULL;

	FUNC7(func);

	/* Firmware running ? */
	ret = FUNC1(priv, GCR_A_REG, &byte);
	if (ret)
		goto release_host;
	if (byte == GCR_A_RUN) {
		FUNC3(priv->net_dev, "MAC firmware running ...\n");
		ret = -EBUSY;
		goto release_host;
	}

	ret = FUNC6(&fw_entry, ROM_FILE,
			       &func->dev);
	if (ret)
		goto release_host;

	ret = FUNC0(priv, fw_entry);
	if (ret)
		goto release_firmware;

	/* Firmware running check */
	for (n = 0; n < 50; ++n) {
		FUNC9(10000, 11000);	/* wait_ms(10); */
		ret = FUNC1(priv, GCR_A_REG, &byte);
		if (ret)
			goto release_firmware;

		if (byte == GCR_A_RUN)
			break;
	}
	if ((50) <= n) {
		FUNC4(priv->net_dev, "firmware can't start\n");
		ret = -EIO;
		goto release_firmware;
	}

	ret = 0;

 release_firmware:
	FUNC5(fw_entry);
 release_host:
	FUNC8(func);

	return ret;
}