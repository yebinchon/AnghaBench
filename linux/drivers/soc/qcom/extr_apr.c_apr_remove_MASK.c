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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct apr {int /*<<< orphan*/  rxwq; } ;

/* Variables and functions */
 int /*<<< orphan*/  apr_remove_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct apr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rpmsg_device *rpdev)
{
	struct apr *apr = FUNC1(&rpdev->dev);

	FUNC2(&rpdev->dev, NULL, apr_remove_device);
	FUNC3(apr->rxwq);
	FUNC0(apr->rxwq);
}