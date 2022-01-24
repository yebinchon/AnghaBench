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
struct tb {int /*<<< orphan*/  wq; } ;
struct icm_notification {int /*<<< orphan*/  work; struct tb* tb; int /*<<< orphan*/  pkg; } ;
typedef  enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icm_handle_notification ; 
 struct icm_notification* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tb *tb, enum tb_cfg_pkg_type type,
			     const void *buf, size_t size)
{
	struct icm_notification *n;

	n = FUNC1(sizeof(*n), GFP_KERNEL);
	if (!n)
		return;

	FUNC0(&n->work, icm_handle_notification);
	n->pkg = FUNC2(buf, size, GFP_KERNEL);
	n->tb = tb;

	FUNC3(tb->wq, &n->work);
}