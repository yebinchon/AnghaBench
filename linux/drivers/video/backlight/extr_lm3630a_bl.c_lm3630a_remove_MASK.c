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
struct lm3630a_chip {int /*<<< orphan*/  irqthread; scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BRT_A ; 
 int /*<<< orphan*/  REG_BRT_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct lm3630a_chip*) ; 
 struct lm3630a_chip* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct lm3630a_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	int rval;
	struct lm3630a_chip *pchip = FUNC4(client);

	rval = FUNC5(pchip, REG_BRT_A, 0);
	if (rval < 0)
		FUNC1(pchip->dev, "i2c failed to access register\n");

	rval = FUNC5(pchip, REG_BRT_B, 0);
	if (rval < 0)
		FUNC1(pchip->dev, "i2c failed to access register\n");

	if (pchip->irq) {
		FUNC3(pchip->irq, pchip);
		FUNC2(pchip->irqthread);
		FUNC0(pchip->irqthread);
	}
	return 0;
}