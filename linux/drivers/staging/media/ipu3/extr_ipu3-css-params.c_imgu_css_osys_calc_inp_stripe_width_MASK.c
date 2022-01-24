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

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(int stripe_width_out,
					       int fir_phases, int phase_init,
					       int phase_step, int fir_taps,
					       int pad_left, int pad_right)
{
	int stripe_width_inp = (stripe_width_out + fir_taps - 1) * fir_phases;

	stripe_width_inp = FUNC0(stripe_width_inp - phase_init,
					phase_step);

	return stripe_width_inp - pad_left - pad_right;
}