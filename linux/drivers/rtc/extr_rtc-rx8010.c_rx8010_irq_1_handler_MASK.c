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
struct rx8010_data {TYPE_1__* rtc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int RTC_PF ; 
 int RTC_UF ; 
 int /*<<< orphan*/  RX8010_FLAG ; 
 int RX8010_FLAG_AF ; 
 int RX8010_FLAG_TF ; 
 int RX8010_FLAG_UF ; 
 int RX8010_FLAG_VLF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rx8010_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct i2c_client *client = dev_id;
	struct rx8010_data *rx8010 = FUNC1(client);
	int flagreg;

	FUNC4(&rx8010->rtc->ops_lock);

	flagreg = FUNC2(client, RX8010_FLAG);

	if (flagreg <= 0) {
		FUNC5(&rx8010->rtc->ops_lock);
		return IRQ_NONE;
	}

	if (flagreg & RX8010_FLAG_VLF)
		FUNC0(&client->dev, "Frequency stop detected\n");

	if (flagreg & RX8010_FLAG_TF) {
		flagreg &= ~RX8010_FLAG_TF;
		FUNC6(rx8010->rtc, 1, RTC_PF | RTC_IRQF);
	}

	if (flagreg & RX8010_FLAG_AF) {
		flagreg &= ~RX8010_FLAG_AF;
		FUNC6(rx8010->rtc, 1, RTC_AF | RTC_IRQF);
	}

	if (flagreg & RX8010_FLAG_UF) {
		flagreg &= ~RX8010_FLAG_UF;
		FUNC6(rx8010->rtc, 1, RTC_UF | RTC_IRQF);
	}

	FUNC3(client, RX8010_FLAG, flagreg);

	FUNC5(&rx8010->rtc->ops_lock);
	return IRQ_HANDLED;
}