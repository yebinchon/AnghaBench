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
struct ipuv3_channel {int dummy; } ;
typedef  struct ipuv3_channel ipu_smfc ;
struct csi_priv {int smfc_id; struct ipuv3_channel* idmac_ch; int /*<<< orphan*/  sd; int /*<<< orphan*/  ipu; struct ipuv3_channel* smfc; } ;

/* Variables and functions */
 int IPUV3_CHANNEL_CSI0 ; 
 scalar_t__ FUNC0 (struct ipuv3_channel*) ; 
 int FUNC1 (struct ipuv3_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct csi_priv*) ; 
 struct ipuv3_channel* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ipuv3_channel* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC6(struct csi_priv *priv)
{
	int ch_num, ret;
	struct ipu_smfc *smfc;
	struct ipuv3_channel *idmac_ch;

	ch_num = IPUV3_CHANNEL_CSI0 + priv->smfc_id;

	smfc = FUNC4(priv->ipu, ch_num);
	if (FUNC0(smfc)) {
		FUNC5(&priv->sd, "failed to get SMFC\n");
		ret = FUNC1(smfc);
		goto out;
	}
	priv->smfc = smfc;

	idmac_ch = FUNC3(priv->ipu, ch_num);
	if (FUNC0(idmac_ch)) {
		FUNC5(&priv->sd, "could not get IDMAC channel %u\n",
			 ch_num);
		ret = FUNC1(idmac_ch);
		goto out;
	}
	priv->idmac_ch = idmac_ch;

	return 0;
out:
	FUNC2(priv);
	return ret;
}