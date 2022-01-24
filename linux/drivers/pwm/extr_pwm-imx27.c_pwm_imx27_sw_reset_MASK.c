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
struct pwm_imx27_chip {scalar_t__ mmio_base; } ;
struct pwm_chip {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MX3_PWMCR ; 
 int MX3_PWMCR_SWR ; 
 int /*<<< orphan*/  MX3_PWM_SWR_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (scalar_t__) ; 
 struct pwm_imx27_chip* FUNC2 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pwm_chip *chip)
{
	struct pwm_imx27_chip *imx = FUNC2(chip);
	struct device *dev = chip->dev;
	int wait_count = 0;
	u32 cr;

	FUNC4(MX3_PWMCR_SWR, imx->mmio_base + MX3_PWMCR);
	do {
		FUNC3(200, 1000);
		cr = FUNC1(imx->mmio_base + MX3_PWMCR);
	} while ((cr & MX3_PWMCR_SWR) &&
		 (wait_count++ < MX3_PWM_SWR_LOOP));

	if (cr & MX3_PWMCR_SWR)
		FUNC0(dev, "software reset timeout\n");
}