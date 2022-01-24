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
struct ntb_dev {struct tool_ctx* ctx; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct tool_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct tool_ctx*) ; 

__attribute__((used)) static void FUNC4(struct ntb_client *self, struct ntb_dev *ntb)
{
	struct tool_ctx *tc = ntb->ctx;

	FUNC1(tc);

	FUNC3(tc);

	FUNC2(tc);

	FUNC0(tc);
}