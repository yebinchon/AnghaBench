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
struct uniphier_reset_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; struct uniphier_reset_data* data; } ;
struct uniphier_reset_data {unsigned long id; int flags; int /*<<< orphan*/  reg; int /*<<< orphan*/  bit; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int UNIPHIER_RESET_ACTIVE_LOW ; 
 unsigned long UNIPHIER_RESET_ID_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct uniphier_reset_priv* FUNC3 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC4(struct reset_controller_dev *rcdev,
				 unsigned long id, int assert)
{
	struct uniphier_reset_priv *priv = FUNC3(rcdev);
	const struct uniphier_reset_data *p;

	for (p = priv->data; p->id != UNIPHIER_RESET_ID_END; p++) {
		unsigned int mask, val;

		if (p->id != id)
			continue;

		mask = FUNC0(p->bit);

		if (assert)
			val = mask;
		else
			val = ~mask;

		if (p->flags & UNIPHIER_RESET_ACTIVE_LOW)
			val = ~val;

		return FUNC2(priv->regmap, p->reg, mask, val);
	}

	FUNC1(priv->dev, "reset_id=%lu was not handled\n", id);
	return -EINVAL;
}