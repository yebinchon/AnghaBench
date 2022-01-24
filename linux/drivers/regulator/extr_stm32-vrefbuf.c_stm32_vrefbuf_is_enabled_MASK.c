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
struct stm32_vrefbuf {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int STM32_ENVR ; 
 scalar_t__ STM32_VREFBUF_CSR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct stm32_vrefbuf* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev)
{
	struct stm32_vrefbuf *priv = FUNC4(rdev);
	int ret;

	ret = FUNC0(priv->dev);
	if (ret < 0) {
		FUNC3(priv->dev);
		return ret;
	}

	ret = FUNC5(priv->base + STM32_VREFBUF_CSR) & STM32_ENVR;

	FUNC1(priv->dev);
	FUNC2(priv->dev);

	return ret;
}