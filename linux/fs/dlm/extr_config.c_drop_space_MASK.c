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
struct dlm_space {int /*<<< orphan*/  group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct dlm_space* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct config_group *g, struct config_item *i)
{
	struct dlm_space *sp = FUNC1(i);

	/* assert list_empty(&sp->members) */

	FUNC2(&sp->group);
	FUNC0(i);
}