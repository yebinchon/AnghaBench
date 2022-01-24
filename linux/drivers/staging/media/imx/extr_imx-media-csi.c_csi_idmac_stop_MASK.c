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
struct csi_priv {int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  underrun_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  nfb4eof_irq; int /*<<< orphan*/  eof_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct csi_priv *priv)
{
	FUNC3(priv->dev, priv->eof_irq, priv);
	FUNC3(priv->dev, priv->nfb4eof_irq, priv);

	FUNC1(priv, VB2_BUF_STATE_ERROR);

	FUNC4(priv->dev, &priv->underrun_buf);

	/* cancel the EOF timeout timer */
	FUNC2(&priv->eof_timeout_timer);

	FUNC0(priv);
}