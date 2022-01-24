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
typedef  int u16 ;
struct tpu_pwm_device {int channel; TYPE_1__* tpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TPU_TSTR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tpu_pwm_device *pwm, int start)
{
	unsigned long flags;
	u16 value;

	FUNC2(&pwm->tpu->lock, flags);
	value = FUNC0(pwm->tpu->base + TPU_TSTR);

	if (start)
		value |= 1 << pwm->channel;
	else
		value &= ~(1 << pwm->channel);

	FUNC1(value, pwm->tpu->base + TPU_TSTR);
	FUNC3(&pwm->tpu->lock, flags);
}