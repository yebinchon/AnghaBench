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
struct gadget_info {int /*<<< orphan*/  lock; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gadget_info* FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct gadget_info*) ; 

void FUNC4(struct config_item *item)
{
	struct gadget_info *gi = FUNC2(item);

	FUNC0(&gi->lock);
	FUNC3(gi);
	FUNC1(&gi->lock);
}