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
struct gadget_strings {int /*<<< orphan*/  list; struct gadget_strings* serialnumber; struct gadget_strings* product; struct gadget_strings* manufacturer; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gadget_strings*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gadget_strings* FUNC2 (struct config_item*) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct gadget_strings *gs = FUNC2(item);

	FUNC0(gs->manufacturer);
	FUNC0(gs->product);
	FUNC0(gs->serialnumber);

	FUNC1(&gs->list);
	FUNC0(gs);
}