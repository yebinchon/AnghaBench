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
struct mon_bus {int /*<<< orphan*/  bin_inited; int /*<<< orphan*/  text_inited; int /*<<< orphan*/  r_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mon_bus*,int /*<<< orphan*/ *) ; 
 struct mon_bus mon_bus0 ; 
 int /*<<< orphan*/  FUNC3 (struct mon_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct mon_bus *mbus = &mon_bus0;

	FUNC1(&mbus->ref);
	FUNC4(&mbus->lock);
	FUNC0(&mbus->r_list);

	mbus->text_inited = FUNC3(mbus, NULL);
	mbus->bin_inited = FUNC2(mbus, NULL);
}