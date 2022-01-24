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
struct prp_priv {int /*<<< orphan*/ * rot_out_ch; int /*<<< orphan*/ * rot_in_ch; int /*<<< orphan*/ * out_ch; int /*<<< orphan*/ * ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct prp_priv *priv)
{
	if (priv->ic)
		FUNC0(priv->ic);
	priv->ic = NULL;

	if (priv->out_ch)
		FUNC1(priv->out_ch);
	priv->out_ch = NULL;

	if (priv->rot_in_ch)
		FUNC1(priv->rot_in_ch);
	priv->rot_in_ch = NULL;

	if (priv->rot_out_ch)
		FUNC1(priv->rot_out_ch);
	priv->rot_out_ch = NULL;
}