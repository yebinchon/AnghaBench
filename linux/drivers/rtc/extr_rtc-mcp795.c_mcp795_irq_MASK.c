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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct mutex {int dummy; } ;
struct rtc_device {struct mutex ops_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_device*,int,int) ; 
 struct rtc_device* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct spi_device *spi = data;
	struct rtc_device *rtc = FUNC5(spi);
	struct mutex *lock = &rtc->ops_lock;
	int ret;

	FUNC2(lock);

	/* Disable alarm.
	 * There is no need to clear ALM0IF (Alarm 0 Interrupt Flag) bit,
	 * because it is done every time when alarm is enabled.
	 */
	ret = FUNC1(&spi->dev, false);
	if (ret)
		FUNC0(&spi->dev,
			"Failed to disable alarm in IRQ (ret=%d)\n", ret);
	FUNC4(rtc, 1, RTC_AF | RTC_IRQF);

	FUNC3(lock);

	return IRQ_HANDLED;
}