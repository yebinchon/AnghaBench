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
struct mmap_batch_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct mmap_batch_state*) ; 

__attribute__((used)) static int FUNC1(void *data, int nr, void *state)
{
	struct mmap_batch_state *st = state;
	int *errs = data;
	int i;
	int ret;

	for (i = 0; i < nr; i++) {
		ret = FUNC0(errs[i], st);
		if (ret < 0)
			return ret;
	}
	return 0;
}