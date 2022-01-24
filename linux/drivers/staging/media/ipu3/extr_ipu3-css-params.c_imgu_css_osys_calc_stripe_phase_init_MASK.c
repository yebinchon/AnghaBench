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
 int FUNC0 (int,int,int,int,int) ; 

__attribute__((used)) static int FUNC1(int stripe_offset_out,
						int fir_phases, int phase_init,
						int phase_step, int pad_left)
{
	int stripe_offset_inp =
		FUNC0(stripe_offset_out,
						 fir_phases, phase_init,
						 phase_step, pad_left);

	return phase_init + ((pad_left + stripe_offset_inp) * phase_step) -
		stripe_offset_out * fir_phases;
}