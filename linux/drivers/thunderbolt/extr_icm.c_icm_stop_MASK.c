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
struct tb {int /*<<< orphan*/  nhi; int /*<<< orphan*/ * root_switch; } ;
struct icm {int /*<<< orphan*/  rescan_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  NHI_MAILBOX_DRV_UNLOADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct icm* FUNC2 (struct tb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tb *tb)
{
	struct icm *icm = FUNC2(tb);

	FUNC0(&icm->rescan_work);
	FUNC3(tb->root_switch);
	tb->root_switch = NULL;
	FUNC1(tb->nhi, NHI_MAILBOX_DRV_UNLOADS, 0);
}