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
struct raw3270_view {int dummy; } ;
struct con3270 {int /*<<< orphan*/  update_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_UPDATE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct con3270*,int) ; 

__attribute__((used)) static int
FUNC1(struct raw3270_view *view)
{
	struct con3270 *cp;

	cp = (struct con3270 *) view;
	cp->update_flags = CON_UPDATE_ALL;
	FUNC0(cp, 1);
	return 0;
}