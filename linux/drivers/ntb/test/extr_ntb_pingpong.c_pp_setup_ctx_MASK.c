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
struct pp_ctx {int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTB_SPEED_AUTO ; 
 int /*<<< orphan*/  NTB_WIDTH_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pp_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pp_ops ; 

__attribute__((used)) static int FUNC3(struct pp_ctx *pp)
{
	int ret;

	ret = FUNC2(pp->ntb, pp, &pp_ops);
	if (ret)
		return ret;

	FUNC0(pp->ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
	/* Might be not necessary */
	FUNC1(pp->ntb);

	return 0;
}