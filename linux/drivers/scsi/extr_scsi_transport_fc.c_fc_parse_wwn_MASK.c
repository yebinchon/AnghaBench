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
typedef  int /*<<< orphan*/  wwn ;
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 

__attribute__((used)) static int
FUNC3(const char *ns, u64 *nm)
{
	unsigned int i, j;
	u8 wwn[8];

	FUNC1(wwn, 0, sizeof(wwn));

	/* Validate and store the new name */
	for (i=0, j=0; i < 16; i++) {
		int value;

		value = FUNC0(*ns++);
		if (value >= 0)
			j = (j << 4) | value;
		else
			return -EINVAL;
		if (i % 2) {
			wwn[i/2] = j & 0xff;
			j = 0;
		}
	}

	*nm = FUNC2(wwn);

	return 0;
}