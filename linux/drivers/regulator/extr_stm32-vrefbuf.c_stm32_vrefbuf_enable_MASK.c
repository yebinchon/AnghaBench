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
struct stm32_vrefbuf {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct regulator_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STM32_ENVR ; 
 int STM32_HIZ ; 
 scalar_t__ STM32_VREFBUF_CSR ; 
 int STM32_VRR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct stm32_vrefbuf* FUNC5 (struct regulator_dev*) ; 
 int FUNC6 (scalar_t__,int,int,int,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct regulator_dev *rdev)
{
	struct stm32_vrefbuf *priv = FUNC5(rdev);
	u32 val;
	int ret;

	ret = FUNC1(priv->dev);
	if (ret < 0) {
		FUNC4(priv->dev);
		return ret;
	}

	val = FUNC7(priv->base + STM32_VREFBUF_CSR);
	val = (val & ~STM32_HIZ) | STM32_ENVR;
	FUNC8(val, priv->base + STM32_VREFBUF_CSR);

	/*
	 * Vrefbuf startup time depends on external capacitor: wait here for
	 * VRR to be set. That means output has reached expected value.
	 * ~650us sleep should be enough for caps up to 1.5uF. Use 10ms as
	 * arbitrary timeout.
	 */
	ret = FUNC6(priv->base + STM32_VREFBUF_CSR, val,
				 val & STM32_VRR, 650, 10000);
	if (ret) {
		FUNC0(&rdev->dev, "stm32 vrefbuf timed out!\n");
		val = FUNC7(priv->base + STM32_VREFBUF_CSR);
		val = (val & ~STM32_ENVR) | STM32_HIZ;
		FUNC8(val, priv->base + STM32_VREFBUF_CSR);
	}

	FUNC2(priv->dev);
	FUNC3(priv->dev);

	return ret;
}