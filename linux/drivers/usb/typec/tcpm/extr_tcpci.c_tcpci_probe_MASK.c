#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct tcpci_chip {int /*<<< orphan*/  tcpci; TYPE_1__ data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPC_ALERT_MASK ; 
 int /*<<< orphan*/  _tcpci_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcpci_chip* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct tcpci_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tcpci_chip*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tcpci_regmap_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
		       const struct i2c_device_id *i2c_id)
{
	struct tcpci_chip *chip;
	int err;
	u16 val = 0;

	chip = FUNC3(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->data.regmap = FUNC4(client, &tcpci_regmap_config);
	if (FUNC0(chip->data.regmap))
		return FUNC1(chip->data.regmap);

	FUNC6(client, chip);

	/* Disable chip interrupts before requesting irq */
	err = FUNC7(chip->data.regmap, TCPC_ALERT_MASK, &val,
			       sizeof(u16));
	if (err < 0)
		return err;

	chip->tcpci = FUNC8(&client->dev, &chip->data);
	if (FUNC0(chip->tcpci))
		return FUNC1(chip->tcpci);

	err = FUNC5(&client->dev, client->irq, NULL,
					_tcpci_irq,
					IRQF_ONESHOT | IRQF_TRIGGER_LOW,
					FUNC2(&client->dev), chip);
	if (err < 0) {
		FUNC9(chip->tcpci);
		return err;
	}

	return 0;
}