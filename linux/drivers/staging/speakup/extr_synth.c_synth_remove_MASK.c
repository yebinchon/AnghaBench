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
struct spk_synth {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ module_status ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spk_mutex ; 
 struct spk_synth* synth ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct spk_synth *in_synth)
{
	FUNC1(&spk_mutex);
	if (synth == in_synth)
		FUNC3();
	FUNC0(&in_synth->node);
	module_status = 0;
	FUNC2(&spk_mutex);
}