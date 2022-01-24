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
struct prp_priv {struct imx_ic_priv* ic_priv; int /*<<< orphan*/  lock; } ;
struct imx_ic_priv {struct prp_priv* task_priv; int /*<<< orphan*/  ipu_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct prp_priv* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct imx_ic_priv *ic_priv)
{
	struct prp_priv *priv;

	priv = FUNC0(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC1(&priv->lock);
	ic_priv->task_priv = priv;
	priv->ic_priv = ic_priv;

	return 0;
}