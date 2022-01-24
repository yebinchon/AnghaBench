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
struct smb347_charger_platform_data {int /*<<< orphan*/  irq_gpio; } ;
struct smb347_charger {int /*<<< orphan*/  regmap; struct smb347_charger_platform_data* pdata; } ;
struct i2c_client {int irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_STAT ; 
 int CFG_STAT_ACTIVE_HIGH ; 
 int CFG_STAT_DISABLED ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (int,struct smb347_charger*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct smb347_charger*) ; 
 int /*<<< orphan*/  smb347_interrupt ; 
 int FUNC6 (struct smb347_charger*,int) ; 

__attribute__((used)) static int FUNC7(struct smb347_charger *smb,
			   struct i2c_client *client)
{
	const struct smb347_charger_platform_data *pdata = smb->pdata;
	int ret, irq = FUNC3(pdata->irq_gpio);

	ret = FUNC2(pdata->irq_gpio, GPIOF_IN, client->name);
	if (ret < 0)
		goto fail;

	ret = FUNC5(irq, NULL, smb347_interrupt,
				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				   client->name, smb);
	if (ret < 0)
		goto fail_gpio;

	ret = FUNC6(smb, true);
	if (ret < 0)
		goto fail_irq;

	/*
	 * Configure the STAT output to be suitable for interrupts: disable
	 * all other output (except interrupts) and make it active low.
	 */
	ret = FUNC4(smb->regmap, CFG_STAT,
				 CFG_STAT_ACTIVE_HIGH | CFG_STAT_DISABLED,
				 CFG_STAT_DISABLED);
	if (ret < 0)
		goto fail_readonly;

	FUNC6(smb, false);
	client->irq = irq;
	return 0;

fail_readonly:
	FUNC6(smb, false);
fail_irq:
	FUNC0(irq, smb);
fail_gpio:
	FUNC1(pdata->irq_gpio);
fail:
	client->irq = 0;
	return ret;
}