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
struct prp_priv {int /*<<< orphan*/ * rot_buf; int /*<<< orphan*/  ic; int /*<<< orphan*/  rot_in_ch; int /*<<< orphan*/  out_ch; int /*<<< orphan*/  rot_out_ch; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct prp_priv *priv)
{
	struct imx_ic_priv *ic_priv = priv->ic_priv;

	FUNC2(priv->ic);

	FUNC3(priv->out_ch);
	FUNC3(priv->rot_in_ch);
	FUNC3(priv->rot_out_ch);

	FUNC4(priv->out_ch, priv->rot_in_ch);

	FUNC1(priv->ic);

	FUNC0(ic_priv->ipu_dev, &priv->rot_buf[0]);
	FUNC0(ic_priv->ipu_dev, &priv->rot_buf[1]);
}