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
struct rt1711h_chip {int /*<<< orphan*/  dev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  TCPC_ALERT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct rt1711h_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt1711h_irq ; 
 int FUNC3 (struct rt1711h_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rt1711h_chip *chip,
			      struct i2c_client *client)
{
	int ret;

	/* Disable chip interrupts before requesting irq */
	ret = FUNC3(chip, TCPC_ALERT_MASK, 0);
	if (ret < 0)
		return ret;

	ret = FUNC1(chip->dev, client->irq, NULL,
					rt1711h_irq,
					IRQF_ONESHOT | IRQF_TRIGGER_LOW,
					FUNC0(chip->dev), chip);
	if (ret < 0)
		return ret;
	FUNC2(client->irq);
	return 0;
}