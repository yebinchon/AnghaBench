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
struct uniphier_u3hsphy_trim_param {int /*<<< orphan*/  hs_i; int /*<<< orphan*/  sel_t; int /*<<< orphan*/  rterm; } ;
struct uniphier_u3hsphy_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_u3hsphy_priv*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct uniphier_u3hsphy_priv *priv,
					 struct uniphier_u3hsphy_trim_param *pt)
{
	int ret;

	ret = FUNC0(priv, "rterm", &pt->rterm);
	if (ret)
		return ret;

	ret = FUNC0(priv, "sel_t", &pt->sel_t);
	if (ret)
		return ret;

	ret = FUNC0(priv, "hs_i", &pt->hs_i);
	if (ret)
		return ret;

	return 0;
}