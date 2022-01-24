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
struct vdic_priv {int /*<<< orphan*/  sd; struct ipuv3_channel* vdi_in_ch_n; int /*<<< orphan*/  ipu; struct ipuv3_channel* vdi_in_ch; struct ipuv3_channel* vdi_in_ch_p; int /*<<< orphan*/  csi_direct; struct ipuv3_channel* vdi; } ;
struct ipuv3_channel {int dummy; } ;
typedef  struct ipuv3_channel ipu_vdi ;

/* Variables and functions */
 int IPUV3_CHANNEL_MEM_VDI_CUR ; 
 int IPUV3_CHANNEL_MEM_VDI_NEXT ; 
 int IPUV3_CHANNEL_MEM_VDI_PREV ; 
 scalar_t__ FUNC0 (struct ipuv3_channel*) ; 
 int FUNC1 (struct ipuv3_channel*) ; 
 struct ipuv3_channel* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ipuv3_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct vdic_priv*) ; 

__attribute__((used)) static int FUNC6(struct vdic_priv *priv)
{
	int ret, err_chan;
	struct ipuv3_channel *ch;
	struct ipu_vdi *vdi;

	vdi = FUNC3(priv->ipu);
	if (FUNC0(vdi)) {
		FUNC4(&priv->sd, "failed to get VDIC\n");
		ret = FUNC1(vdi);
		goto out;
	}
	priv->vdi = vdi;

	if (!priv->csi_direct) {
		ch = FUNC2(priv->ipu, IPUV3_CHANNEL_MEM_VDI_PREV);
		if (FUNC0(ch)) {
			err_chan = IPUV3_CHANNEL_MEM_VDI_PREV;
			ret = FUNC1(ch);
			goto out_err_chan;
		}
		priv->vdi_in_ch_p = ch;

		ch = FUNC2(priv->ipu, IPUV3_CHANNEL_MEM_VDI_CUR);
		if (FUNC0(ch)) {
			err_chan = IPUV3_CHANNEL_MEM_VDI_CUR;
			ret = FUNC1(ch);
			goto out_err_chan;
		}
		priv->vdi_in_ch = ch;

		ch = FUNC2(priv->ipu, IPUV3_CHANNEL_MEM_VDI_NEXT);
		if (FUNC0(ch)) {
			err_chan = IPUV3_CHANNEL_MEM_VDI_NEXT;
			ret = FUNC1(ch);
			goto out_err_chan;
		}
		priv->vdi_in_ch_n = ch;
	}

	return 0;

out_err_chan:
	FUNC4(&priv->sd, "could not get IDMAC channel %u\n", err_chan);
out:
	FUNC5(priv);
	return ret;
}