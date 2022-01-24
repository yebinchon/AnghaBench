#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tool_ctx {int /*<<< orphan*/  link_wq; TYPE_1__* ntb; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int FUNC1 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ctx)
{
	struct tool_ctx *tc = ctx;
	enum ntb_speed speed;
	enum ntb_width width;
	int up;

	up = FUNC1(tc->ntb, &speed, &width);

	FUNC0(&tc->ntb->dev, "link is %s speed %d width %d\n",
		up ? "up" : "down", speed, width);

	FUNC2(&tc->link_wq);
}