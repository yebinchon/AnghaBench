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
struct prp_priv {int nfb4eof; int /*<<< orphan*/  irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int /*<<< orphan*/  sd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct prp_priv *priv = dev_id;
	struct imx_ic_priv *ic_priv = priv->ic_priv;

	FUNC0(&priv->irqlock);

	/*
	 * this is not an unrecoverable error, just mark
	 * the next captured frame with vb2 error flag.
	 */
	priv->nfb4eof = true;

	FUNC2(&ic_priv->sd, "NFB4EOF\n");

	FUNC1(&priv->irqlock);

	return IRQ_HANDLED;
}