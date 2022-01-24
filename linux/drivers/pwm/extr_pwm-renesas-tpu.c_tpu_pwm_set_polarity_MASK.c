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
struct tpu_pwm_device {int polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 struct tpu_pwm_device* FUNC0 (struct pwm_device*) ; 

__attribute__((used)) static int FUNC1(struct pwm_chip *chip, struct pwm_device *_pwm,
				enum pwm_polarity polarity)
{
	struct tpu_pwm_device *pwm = FUNC0(_pwm);

	pwm->polarity = polarity;

	return 0;
}