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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static void FUNC5(int pool, int size, int elements)
{
	char *memory;
	char *fpa;

	do {
		fpa = FUNC0(pool);
		if (fpa) {
			elements--;
			fpa = (char *)FUNC3(FUNC1(fpa));
			memory = *((char **)fpa - 1);
			FUNC2(memory);
		}
	} while (fpa);

	if (elements < 0)
		FUNC4("Freeing of pool %u had too many buffers (%d)\n",
			pool, elements);
	else if (elements > 0)
		FUNC4("Warning: Freeing of pool %u is missing %d buffers\n",
			pool, elements);
}