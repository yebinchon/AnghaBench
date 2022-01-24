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
struct spk_synth {int alive; } ;

/* Variables and functions */
 int FUNC0 (struct spk_synth*) ; 
 int /*<<< orphan*/  FUNC1 (struct spk_synth*) ; 

__attribute__((used)) static int FUNC2(struct spk_synth *synth)
{
	int failed = 0;

	failed = FUNC0(synth);
	if (failed == 0)
		FUNC1(synth);
	synth->alive = !failed;
	return failed;
}