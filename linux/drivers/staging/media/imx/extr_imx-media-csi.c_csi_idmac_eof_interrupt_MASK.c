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
struct csi_priv {int last_eof; int ipu_buf_num; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  idmac_ch; scalar_t__ fim; int /*<<< orphan*/  last_eof_comp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct csi_priv *priv = dev_id;

	FUNC7(&priv->irqlock);

	if (priv->last_eof) {
		FUNC0(&priv->last_eof_comp);
		priv->last_eof = false;
		goto unlock;
	}

	if (priv->fim)
		/* call frame interval monitor */
		FUNC2(priv->fim, FUNC4());

	FUNC1(priv);

	/* select new IPU buf */
	FUNC3(priv->idmac_ch, priv->ipu_buf_num);
	/* toggle IPU double-buffer index */
	priv->ipu_buf_num ^= 1;

	/* bump the EOF timeout timer */
	FUNC5(&priv->eof_timeout_timer,
		  jiffies + FUNC6(IMX_MEDIA_EOF_TIMEOUT));

unlock:
	FUNC8(&priv->irqlock);
	return IRQ_HANDLED;
}