#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  busid_lock; scalar_t__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSID_SIZE ; 
 int MAX_BUSID ; 
 TYPE_1__* busid_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *busid)
{
	int i;
	int idx = -1;

	for (i = 0; i < MAX_BUSID; i++) {
		FUNC0(&busid_table[i].busid_lock);
		if (busid_table[i].name[0])
			if (!FUNC2(busid_table[i].name, busid, BUSID_SIZE)) {
				idx = i;
				FUNC1(&busid_table[i].busid_lock);
				break;
			}
		FUNC1(&busid_table[i].busid_lock);
	}
	return idx;
}