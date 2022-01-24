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
struct TYPE_2__ {size_t clk_select; unsigned long clk_ps; } ;
struct fsl_pwm_chip {TYPE_1__ period; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC2(struct fsl_pwm_chip *fpc,
					  unsigned int ticks)
{
	unsigned long rate;
	unsigned long long exval;

	rate = FUNC0(fpc->clk[fpc->period.clk_select]);
	exval = ticks;
	exval *= 1000000000UL;
	FUNC1(exval, rate >> fpc->period.clk_ps);
	return exval;
}