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
struct spk_synth {int alive; int /*<<< orphan*/  long_name; int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct spk_synth*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct spk_synth *synth)
{
	if (synth->alive)
		return 1;
	if (FUNC1(synth) > 0) {
		/* restart */
		synth->alive = 1;
		FUNC2("%s", synth->init);
		return 2; /* reenabled */
	}
	FUNC0("%s: can't restart synth\n", synth->long_name);
	return 0;
}