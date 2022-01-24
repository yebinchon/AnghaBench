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
struct raw3270_view {struct raw3270* dev; } ;
struct raw3270 {int /*<<< orphan*/  flags; struct raw3270_view* view; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAW3270_FLAGS_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC1(struct raw3270_view *view)
{
	struct raw3270 *rp = view->dev;

	return rp && rp->view == view &&
		!FUNC0(RAW3270_FLAGS_FROZEN, &rp->flags);
}