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
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct crystalcove_pwm {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct crystalcove_pwm* FUNC1 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC2(struct pwm_chip *c, struct pwm_device *pwm)
{
	struct crystalcove_pwm *crc_pwm = FUNC1(c);

	FUNC0(crc_pwm->regmap, BACKLIGHT_EN, 1);

	return 0;
}