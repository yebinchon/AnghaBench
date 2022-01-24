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
struct mt76x02_dev {int dummy; } ;
struct mt76_reg_pair {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mt76x02_dev *dev,
			const struct mt76_reg_pair *data,
			int n)
{
	while (n-- > 0) {
		FUNC0(dev, data->reg, data->value);
		data++;
	}
}