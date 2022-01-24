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
struct kona_pwmc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PWM_CONTROL_OFFSET ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct kona_pwmc *kp, unsigned int chan)
{
	unsigned int value = FUNC3(kp->base + PWM_CONTROL_OFFSET);

	/* Set trigger bit and clear smooth bit to apply new settings */
	value &= ~(1 << FUNC0(chan));
	value |= 1 << FUNC1(chan);
	FUNC4(value, kp->base + PWM_CONTROL_OFFSET);

	/* Trigger bit must be held high for at least 400 ns. */
	FUNC2(400);
}