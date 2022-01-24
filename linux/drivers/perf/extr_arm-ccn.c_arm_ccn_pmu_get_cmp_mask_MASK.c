#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {TYPE_1__* cmp_mask; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int FUNC3 (char const) ; 

__attribute__((used)) static u64 *FUNC4(struct arm_ccn *ccn, const char *name)
{
	unsigned long i;

	if (FUNC0(!name || !name[0] || !FUNC2(name[0]) || !name[1]))
		return NULL;
	i = FUNC1(name[0]) ? name[0] - '0' : 0xa + FUNC3(name[0]) - 'a';

	switch (name[1]) {
	case 'l':
		return &ccn->dt.cmp_mask[i].l;
	case 'h':
		return &ccn->dt.cmp_mask[i].h;
	default:
		return NULL;
	}
}