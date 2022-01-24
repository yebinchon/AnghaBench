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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct aspeed_lpc_snoop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aspeed_lpc_snoop*,int) ; 
 struct aspeed_lpc_snoop* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct aspeed_lpc_snoop *lpc_snoop = FUNC1(&pdev->dev);

	/* Disable both snoop channels */
	FUNC0(lpc_snoop, 0);
	FUNC0(lpc_snoop, 1);

	return 0;
}