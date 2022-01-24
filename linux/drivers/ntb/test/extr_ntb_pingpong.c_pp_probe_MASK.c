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
struct pp_ctx {int dummy; } ;
struct ntb_dev {int dummy; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pp_ctx*) ; 
 int FUNC1 (struct pp_ctx*) ; 
 int FUNC2 (struct ntb_dev*) ; 
 struct pp_ctx* FUNC3 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_ctx*) ; 
 int FUNC5 (struct pp_ctx*) ; 
 int FUNC6 (struct pp_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_ctx*) ; 

__attribute__((used)) static int FUNC8(struct ntb_client *client, struct ntb_dev *ntb)
{
	struct pp_ctx *pp;
	int ret;

	ret = FUNC2(ntb);
	if (ret)
		return ret;

	pp = FUNC3(ntb);
	if (FUNC0(pp))
		return FUNC1(pp);

	FUNC4(pp);

	ret = FUNC5(pp);
	if (ret)
		return ret;

	ret = FUNC6(pp);
	if (ret)
		return ret;

	FUNC7(pp);

	return 0;
}