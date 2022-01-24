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
struct pwm_imx27_chip {scalar_t__ mmio_base; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MX3_PWMSR ; 
 int /*<<< orphan*/  MX3_PWMSR_FIFOAV ; 
 int MX3_PWMSR_FIFOAV_4WORDS ; 
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct pwm_imx27_chip* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC7(struct pwm_chip *chip,
				     struct pwm_device *pwm)
{
	struct pwm_imx27_chip *imx = FUNC6(chip);
	struct device *dev = chip->dev;
	unsigned int period_ms;
	int fifoav;
	u32 sr;

	sr = FUNC5(imx->mmio_base + MX3_PWMSR);
	fifoav = FUNC1(MX3_PWMSR_FIFOAV, sr);
	if (fifoav == MX3_PWMSR_FIFOAV_4WORDS) {
		period_ms = FUNC0(FUNC4(pwm),
					 NSEC_PER_MSEC);
		FUNC3(period_ms);

		sr = FUNC5(imx->mmio_base + MX3_PWMSR);
		if (fifoav == FUNC1(MX3_PWMSR_FIFOAV, sr))
			FUNC2(dev, "there is no free FIFO slot\n");
	}
}