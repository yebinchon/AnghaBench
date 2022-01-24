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
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long map_size ; 
 int /*<<< orphan*/  map_storep ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(sector_t lba, unsigned int len)
{
	sector_t end = lba + len;

	while (lba < end) {
		unsigned long index = FUNC0(lba);

		if (index < map_size)
			FUNC2(index, map_storep);

		lba = FUNC1(index + 1);
	}
}