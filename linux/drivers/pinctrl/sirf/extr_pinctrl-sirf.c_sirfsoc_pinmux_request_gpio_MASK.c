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
struct sirfsoc_pmx {scalar_t__ gpio_virtbase; } ;
struct pinctrl_gpio_range {int id; unsigned int pin_base; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct sirfsoc_pmx* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pmxdev,
	struct pinctrl_gpio_range *range, unsigned offset)
{
	struct sirfsoc_pmx *spmx;

	int group = range->id;

	u32 muxval;

	spmx = FUNC1(pmxdev);

	muxval = FUNC2(spmx->gpio_virtbase +
		FUNC0(group));
	muxval = muxval | (1 << (offset - range->pin_base));
	FUNC3(muxval, spmx->gpio_virtbase +
		FUNC0(group));

	return 0;
}