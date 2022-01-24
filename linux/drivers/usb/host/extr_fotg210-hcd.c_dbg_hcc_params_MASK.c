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
typedef  int /*<<< orphan*/  u32 ;
struct fotg210_hcd {TYPE_1__* caps; } ;
struct TYPE_2__ {int /*<<< orphan*/  hcc_params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,char*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fotg210_hcd *fotg210, char *label)
{
	u32 params = FUNC3(fotg210, &fotg210->caps->hcc_params);

	FUNC2(fotg210, "%s hcc_params %04x uframes %s%s\n", label,
			params,
			FUNC1(params) ? "256/512/1024" : "1024",
			FUNC0(params) ? " park" : "");
}