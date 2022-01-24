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
struct prp_priv {struct ipuv3_channel* rot_out_ch; struct ipuv3_channel* rot_in_ch; struct ipuv3_channel* out_ch; struct ipuv3_channel* ic; struct imx_ic_priv* ic_priv; } ;
struct ipuv3_channel {int dummy; } ;
typedef  struct ipuv3_channel ipu_ic ;
struct imx_ic_priv {int task_id; int /*<<< orphan*/  sd; int /*<<< orphan*/  ipu; } ;
struct TYPE_2__ {int /*<<< orphan*/  rot_out_ch; int /*<<< orphan*/  rot_in_ch; int /*<<< orphan*/  out_ch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ipuv3_channel*) ; 
 int FUNC1 (struct ipuv3_channel*) ; 
 struct ipuv3_channel* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ipuv3_channel* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* prp_channel ; 
 int /*<<< orphan*/  FUNC4 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC6(struct prp_priv *priv)
{
	struct imx_ic_priv *ic_priv = priv->ic_priv;
	struct ipu_ic *ic;
	struct ipuv3_channel *out_ch, *rot_in_ch, *rot_out_ch;
	int ret, task = ic_priv->task_id;

	ic = FUNC2(ic_priv->ipu, task);
	if (FUNC0(ic)) {
		FUNC5(&ic_priv->sd, "failed to get IC\n");
		ret = FUNC1(ic);
		goto out;
	}
	priv->ic = ic;

	out_ch = FUNC3(ic_priv->ipu, prp_channel[task].out_ch);
	if (FUNC0(out_ch)) {
		FUNC5(&ic_priv->sd, "could not get IDMAC channel %u\n",
			 prp_channel[task].out_ch);
		ret = FUNC1(out_ch);
		goto out;
	}
	priv->out_ch = out_ch;

	rot_in_ch = FUNC3(ic_priv->ipu, prp_channel[task].rot_in_ch);
	if (FUNC0(rot_in_ch)) {
		FUNC5(&ic_priv->sd, "could not get IDMAC channel %u\n",
			 prp_channel[task].rot_in_ch);
		ret = FUNC1(rot_in_ch);
		goto out;
	}
	priv->rot_in_ch = rot_in_ch;

	rot_out_ch = FUNC3(ic_priv->ipu, prp_channel[task].rot_out_ch);
	if (FUNC0(rot_out_ch)) {
		FUNC5(&ic_priv->sd, "could not get IDMAC channel %u\n",
			 prp_channel[task].rot_out_ch);
		ret = FUNC1(rot_out_ch);
		goto out;
	}
	priv->rot_out_ch = rot_out_ch;

	return 0;
out:
	FUNC4(priv);
	return ret;
}