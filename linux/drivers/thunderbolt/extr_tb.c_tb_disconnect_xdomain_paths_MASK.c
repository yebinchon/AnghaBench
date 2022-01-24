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
struct tb_xdomain {int /*<<< orphan*/  is_unplugged; } ;
struct tb {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb*,struct tb_xdomain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tb *tb, struct tb_xdomain *xd)
{
	if (!xd->is_unplugged) {
		FUNC1(&tb->lock);
		FUNC0(tb, xd);
		FUNC2(&tb->lock);
	}
	return 0;
}