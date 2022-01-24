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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct lpc18xx_pwm_data {int /*<<< orphan*/  duty_event; } ;
struct lpc18xx_pwm_chip {int clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc18xx_pwm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpc18xx_pwm_data* FUNC4 (struct pwm_device*) ; 
 struct lpc18xx_pwm_chip* FUNC5 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip,
				    struct pwm_device *pwm, int duty_ns)
{
	struct lpc18xx_pwm_chip *lpc18xx_pwm = FUNC5(chip);
	struct lpc18xx_pwm_data *lpc18xx_data = FUNC4(pwm);
	u64 val;

	val = (u64)duty_ns * lpc18xx_pwm->clk_rate;
	FUNC2(val, NSEC_PER_SEC);

	FUNC3(lpc18xx_pwm,
			   FUNC0(lpc18xx_data->duty_event),
			   (u32)val);

	FUNC3(lpc18xx_pwm,
			   FUNC1(lpc18xx_data->duty_event),
			   (u32)val);
}