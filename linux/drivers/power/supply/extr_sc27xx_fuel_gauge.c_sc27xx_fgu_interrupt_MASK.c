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
typedef  int u32 ;
struct sc27xx_fgu_data {int /*<<< orphan*/  battery; int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SC27XX_FGU_INT_CLR ; 
 scalar_t__ SC27XX_FGU_INT_STS ; 
 int SC27XX_FGU_LOW_OVERLOAD_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sc27xx_fgu_data*,int,int) ; 
 int FUNC6 (struct sc27xx_fgu_data*,int*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct sc27xx_fgu_data *data = dev_id;
	int ret, cap;
	u32 status;

	FUNC0(&data->lock);

	ret = FUNC3(data->regmap, data->base + SC27XX_FGU_INT_STS,
			  &status);
	if (ret)
		goto out;

	ret = FUNC4(data->regmap, data->base + SC27XX_FGU_INT_CLR,
				 status, status);
	if (ret)
		goto out;

	/*
	 * When low overload voltage interrupt happens, we should calibrate the
	 * battery capacity in lower voltage stage.
	 */
	if (!(status & SC27XX_FGU_LOW_OVERLOAD_INT))
		goto out;

	ret = FUNC6(data, &cap);
	if (ret)
		goto out;

	FUNC5(data, cap, true);

out:
	FUNC1(&data->lock);

	FUNC2(data->battery);
	return IRQ_HANDLED;
}