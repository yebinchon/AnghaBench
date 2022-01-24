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
struct prp_priv {int last_eof; int ipu_buf_num; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  eof_timeout_timer; struct ipuv3_channel* out_ch; struct ipuv3_channel* rot_out_ch; int /*<<< orphan*/  rot_mode; int /*<<< orphan*/  last_eof_comp; } ;
struct ipuv3_channel {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipuv3_channel*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct prp_priv*,struct ipuv3_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct prp_priv *priv = dev_id;
	struct ipuv3_channel *channel;

	FUNC6(&priv->irqlock);

	if (priv->last_eof) {
		FUNC0(&priv->last_eof_comp);
		priv->last_eof = false;
		goto unlock;
	}

	channel = (FUNC2(priv->rot_mode)) ?
		priv->rot_out_ch : priv->out_ch;

	FUNC5(priv, channel);

	/* select new IPU buf */
	FUNC1(channel, priv->ipu_buf_num);
	/* toggle IPU double-buffer index */
	priv->ipu_buf_num ^= 1;

	/* bump the EOF timeout timer */
	FUNC3(&priv->eof_timeout_timer,
		  jiffies + FUNC4(IMX_MEDIA_EOF_TIMEOUT));

unlock:
	FUNC7(&priv->irqlock);
	return IRQ_HANDLED;
}