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
struct config_item_type {int dummy; } ;
struct config_item {struct config_item_type const* ci_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,char*,char const*) ; 

void FUNC2(struct config_item *item,
				const char *name,
				const struct config_item_type *type)
{
	FUNC1(item, "%s", name);
	item->ci_type = type;
	FUNC0(item);
}