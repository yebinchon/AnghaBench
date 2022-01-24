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
struct prp_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  vdev; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int /*<<< orphan*/  sd; int /*<<< orphan*/  ipu_dev; struct prp_priv* task_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRPENCVF_SRC_PAD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct prp_priv* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prp_eof_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct imx_ic_priv *ic_priv)
{
	struct prp_priv *priv;

	priv = FUNC2(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	ic_priv->task_priv = priv;
	priv->ic_priv = ic_priv;

	FUNC5(&priv->irqlock);
	FUNC6(&priv->eof_timeout_timer, prp_eof_timeout, 0);

	priv->vdev = FUNC3(ic_priv->ipu_dev,
						   &ic_priv->sd,
						   PRPENCVF_SRC_PAD);
	if (FUNC0(priv->vdev))
		return FUNC1(priv->vdev);

	FUNC4(&priv->lock);

	return 0;
}