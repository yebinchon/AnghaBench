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
typedef  int u64 ;
struct pp_ctx {int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct pp_ctx *pp)
{
	u64 db_mask, msg_mask;
	int ret;

	db_mask = FUNC1(pp->ntb);
	ret = FUNC0(pp->ntb, db_mask);
	if (ret)
		return ret;

	/* Skip message events masking if unsupported */
	if (FUNC2(pp->ntb) < 1)
		return 0;

	msg_mask = FUNC4(pp->ntb) | FUNC3(pp->ntb);
	return FUNC5(pp->ntb, msg_mask);
}