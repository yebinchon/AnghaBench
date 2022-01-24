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
 int NUM_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bufs_in ; 
 int /*<<< orphan*/ * bufs_out ; 

__attribute__((used)) static void FUNC2(void)
{
	int i, j;

	for (i = 0; i < NUM_BUFS; i++) {
		int matches = 0;

		for (j = 0; j < NUM_BUFS; j++)
			if (!FUNC1(&bufs_in[i], &bufs_out[j]))
				matches++;
		FUNC0(matches != 1);
	}
}