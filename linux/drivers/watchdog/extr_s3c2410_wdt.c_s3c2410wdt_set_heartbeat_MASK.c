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
struct watchdog_device {unsigned int timeout; } ;
struct s3c2410_wdt {unsigned int count; scalar_t__ reg_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,unsigned int) ; 
 int EINVAL ; 
 scalar_t__ S3C2410_WTCON ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long S3C2410_WTCON_PRESCALE_MASK ; 
 scalar_t__ S3C2410_WTDAT ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 struct s3c2410_wdt* FUNC6 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wdd,
				    unsigned int timeout)
{
	struct s3c2410_wdt *wdt = FUNC6(wdd);
	unsigned long freq = FUNC2(wdt->clock);
	unsigned int count;
	unsigned int divisor = 1;
	unsigned long wtcon;

	if (timeout < 1)
		return -EINVAL;

	freq = FUNC0(freq, 128);
	count = timeout * freq;

	FUNC3(wdt->dev, "Heartbeat: count=%d, timeout=%d, freq=%lu\n",
		count, timeout, freq);

	/* if the count is bigger than the watchdog register,
	   then work out what we need to do (and if) we can
	   actually make this value
	*/

	if (count >= 0x10000) {
		divisor = FUNC0(count, 0xffff);

		if (divisor > 0x100) {
			FUNC4(wdt->dev, "timeout %d too big\n", timeout);
			return -EINVAL;
		}
	}

	FUNC3(wdt->dev, "Heartbeat: timeout=%d, divisor=%d, count=%d (%08x)\n",
		timeout, divisor, count, FUNC0(count, divisor));

	count = FUNC0(count, divisor);
	wdt->count = count;

	/* update the pre-scaler */
	wtcon = FUNC5(wdt->reg_base + S3C2410_WTCON);
	wtcon &= ~S3C2410_WTCON_PRESCALE_MASK;
	wtcon |= FUNC1(divisor-1);

	FUNC7(count, wdt->reg_base + S3C2410_WTDAT);
	FUNC7(wtcon, wdt->reg_base + S3C2410_WTCON);

	wdd->timeout = (count * divisor) / freq;

	return 0;
}