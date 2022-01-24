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
struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int npwm; int /*<<< orphan*/ * pwms; } ;
struct kona_pwmc {TYPE_1__ chip; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct kona_pwmc* FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct kona_pwmc *kp = FUNC1(pdev);
	unsigned int chan;

	for (chan = 0; chan < kp->chip.npwm; chan++)
		if (FUNC2(&kp->chip.pwms[chan]))
			FUNC0(kp->clk);

	return FUNC3(&kp->chip);
}