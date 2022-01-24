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
struct prp_priv {int last_eof; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  underrun_buf; int /*<<< orphan*/  nfb4eof_irq; int /*<<< orphan*/  eof_irq; int /*<<< orphan*/  src_sd; int /*<<< orphan*/  last_eof_comp; int /*<<< orphan*/  irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu_dev; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct prp_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  video ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct prp_priv *priv)
{
	struct imx_ic_priv *ic_priv = priv->ic_priv;
	unsigned long flags;
	int ret;

	/* mark next EOF interrupt as the last before stream off */
	FUNC6(&priv->irqlock, flags);
	priv->last_eof = true;
	FUNC7(&priv->irqlock, flags);

	/*
	 * and then wait for interrupt handler to mark completion.
	 */
	ret = FUNC10(
		&priv->last_eof_comp,
		FUNC3(IMX_MEDIA_EOF_TIMEOUT));
	if (ret == 0)
		FUNC9(&ic_priv->sd, "wait last EOF timeout\n");

	/* stop upstream */
	ret = FUNC8(priv->src_sd, video, s_stream, 0);
	if (ret && ret != -ENOIOCTLCMD)
		FUNC9(&ic_priv->sd,
			  "upstream stream off failed: %d\n", ret);

	FUNC1(ic_priv->ipu_dev, priv->eof_irq, priv);
	FUNC1(ic_priv->ipu_dev, priv->nfb4eof_irq, priv);

	FUNC5(priv, VB2_BUF_STATE_ERROR);

	FUNC2(ic_priv->ipu_dev, &priv->underrun_buf);

	/* cancel the EOF timeout timer */
	FUNC0(&priv->eof_timeout_timer);

	FUNC4(priv);
}