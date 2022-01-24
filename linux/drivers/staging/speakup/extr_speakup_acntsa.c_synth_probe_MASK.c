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
struct spk_synth {int alive; int /*<<< orphan*/  (* synth_immediate ) (struct spk_synth*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct spk_synth*) ; 
 int /*<<< orphan*/  FUNC2 (struct spk_synth*,char*) ; 

__attribute__((used)) static int FUNC3(struct spk_synth *synth)
{
	int failed;

	failed = FUNC1(synth);
	if (failed == 0) {
		synth->synth_immediate(synth, "\033=R\r");
		FUNC0(100);
	}
	synth->alive = !failed;
	return failed;
}