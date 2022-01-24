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
struct raw3270 {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int FUNC0 (struct raw3270*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct raw3270 *rp)
{
	unsigned long flags;
	int rc;

	FUNC2(FUNC1(rp->cdev), flags);
	rc = FUNC0(rp);
	FUNC3(FUNC1(rp->cdev), flags);
	return rc;
}