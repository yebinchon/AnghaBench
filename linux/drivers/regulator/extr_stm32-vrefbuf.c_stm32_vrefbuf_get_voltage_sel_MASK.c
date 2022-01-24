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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_vrefbuf {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STM32_VREFBUF_CSR ; 
 int /*<<< orphan*/  STM32_VRS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct stm32_vrefbuf* FUNC5 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct regulator_dev *rdev)
{
	struct stm32_vrefbuf *priv = FUNC5(rdev);
	u32 val;
	int ret;

	ret = FUNC1(priv->dev);
	if (ret < 0) {
		FUNC4(priv->dev);
		return ret;
	}

	val = FUNC6(priv->base + STM32_VREFBUF_CSR);
	ret = FUNC0(STM32_VRS, val);

	FUNC2(priv->dev);
	FUNC3(priv->dev);

	return ret;
}