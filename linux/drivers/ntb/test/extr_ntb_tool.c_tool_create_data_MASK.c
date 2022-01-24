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
struct tool_ctx {int /*<<< orphan*/  msg_wq; int /*<<< orphan*/  db_wq; int /*<<< orphan*/  link_wq; struct ntb_dev* ntb; } ;
struct ntb_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tool_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct tool_ctx* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ntb_dev*) ; 
 scalar_t__ FUNC5 (struct ntb_dev*) ; 

__attribute__((used)) static struct tool_ctx *FUNC6(struct ntb_dev *ntb)
{
	struct tool_ctx *tc;

	tc = FUNC2(&ntb->dev, sizeof(*tc), GFP_KERNEL);
	if (tc == NULL)
		return FUNC0(-ENOMEM);

	tc->ntb = ntb;
	FUNC3(&tc->link_wq);
	FUNC3(&tc->db_wq);
	FUNC3(&tc->msg_wq);

	if (FUNC4(ntb))
		FUNC1(&ntb->dev, "doorbell is unsafe\n");

	if (FUNC5(ntb))
		FUNC1(&ntb->dev, "scratchpad is unsafe\n");

	return tc;
}