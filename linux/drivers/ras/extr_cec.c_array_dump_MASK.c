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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {int dummy; } ;
struct ce_array {int n; int flags; int decays_done; int /*<<< orphan*/  pfns_poisoned; int /*<<< orphan*/  ces_entered; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int action_threshold ; 
 int /*<<< orphan*/ * bins ; 
 struct ce_array ce_arr ; 
 int /*<<< orphan*/  ce_mutex ; 
 int decay_interval ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct ce_array *ca = &ce_arr;
	int i;

	FUNC3(&ce_mutex);

	FUNC5(m, "{ n: %d\n", ca->n);
	for (i = 0; i < ca->n; i++) {
		u64 this = FUNC2(ca->array[i]);

		FUNC5(m, " %3d: [%016llx|%s|%03llx]\n",
			   i, this, bins[FUNC1(ca->array[i])], FUNC0(ca->array[i]));
	}

	FUNC5(m, "}\n");

	FUNC5(m, "Stats:\nCEs: %llu\nofflined pages: %llu\n",
		   ca->ces_entered, ca->pfns_poisoned);

	FUNC5(m, "Flags: 0x%x\n", ca->flags);

	FUNC5(m, "Decay interval: %lld seconds\n", decay_interval);
	FUNC5(m, "Decays: %lld\n", ca->decays_done);

	FUNC5(m, "Action threshold: %lld\n", action_threshold);

	FUNC4(&ce_mutex);

	return 0;
}