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
struct tool_ctx {int dummy; } ;
struct ntb_dev {int dummy; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tool_ctx*) ; 
 int FUNC1 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct tool_ctx*) ; 
 struct tool_ctx* FUNC4 (struct ntb_dev*) ; 
 int FUNC5 (struct tool_ctx*) ; 
 int FUNC6 (struct tool_ctx*) ; 
 int FUNC7 (struct tool_ctx*) ; 
 int FUNC8 (struct tool_ctx*) ; 
 int FUNC9 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct tool_ctx*) ; 

__attribute__((used)) static int FUNC11(struct ntb_client *self, struct ntb_dev *ntb)
{
	struct tool_ctx *tc;
	int ret;

	tc = FUNC4(ntb);
	if (FUNC0(tc))
		return FUNC1(tc);

	ret = FUNC8(tc);
	if (ret != 0)
		goto err_clear_data;

	ret = FUNC6(tc);
	if (ret != 0)
		goto err_clear_data;

	ret = FUNC9(tc);
	if (ret != 0)
		goto err_clear_mws;

	ret = FUNC5(tc);
	if (ret != 0)
		goto err_clear_mws;

	ret = FUNC7(tc);
	if (ret != 0)
		goto err_clear_mws;

	FUNC10(tc);

	return 0;

err_clear_mws:
	FUNC3(tc);

err_clear_data:
	FUNC2(tc);

	return ret;
}