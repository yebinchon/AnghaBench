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
struct gadget_config_name {int /*<<< orphan*/  list; struct gadget_config_name* configuration; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gadget_config_name*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gadget_config_name* FUNC2 (struct config_item*) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct gadget_config_name *cn = FUNC2(item);

	FUNC0(cn->configuration);

	FUNC1(&cn->list);
	FUNC0(cn);
}