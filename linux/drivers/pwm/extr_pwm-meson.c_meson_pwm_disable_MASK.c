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
typedef  int /*<<< orphan*/  u32 ;
struct pwm_device {size_t hwpwm; } ;
struct meson_pwm {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwm_en_mask; } ;

/* Variables and functions */
 scalar_t__ REG_MISC_AB ; 
 TYPE_1__* meson_pwm_per_channel_data ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct meson_pwm *meson, struct pwm_device *pwm)
{
	unsigned long flags;
	u32 value;

	FUNC1(&meson->lock, flags);

	value = FUNC0(meson->base + REG_MISC_AB);
	value &= ~meson_pwm_per_channel_data[pwm->hwpwm].pwm_en_mask;
	FUNC3(value, meson->base + REG_MISC_AB);

	FUNC2(&meson->lock, flags);
}