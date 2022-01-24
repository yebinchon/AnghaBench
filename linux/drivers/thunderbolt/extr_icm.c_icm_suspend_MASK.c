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
struct tb {int /*<<< orphan*/  nhi; } ;
struct icm {int /*<<< orphan*/  (* save_devices ) (struct tb*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NHI_MAILBOX_DRV_UNLOADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb*) ; 
 struct icm* FUNC2 (struct tb*) ; 

__attribute__((used)) static int FUNC3(struct tb *tb)
{
	struct icm *icm = FUNC2(tb);

	if (icm->save_devices)
		icm->save_devices(tb);

	FUNC0(tb->nhi, NHI_MAILBOX_DRV_UNLOADS, 0);
	return 0;
}