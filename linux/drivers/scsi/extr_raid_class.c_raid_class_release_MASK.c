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
struct raid_template {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ac; } ;
struct TYPE_4__ {TYPE_1__ raid_attrs; } ;
struct raid_internal {TYPE_2__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct raid_internal*) ; 
 struct raid_internal* FUNC3 (struct raid_template*) ; 

void
FUNC4(struct raid_template *r)
{
	struct raid_internal *i = FUNC3(r);

	FUNC0(FUNC1(&i->r.raid_attrs.ac));

	FUNC2(i);
}