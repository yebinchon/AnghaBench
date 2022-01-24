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
struct glink_ssr {int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 struct glink_ssr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rpmsg_device *rpdev)
{
	struct glink_ssr *ssr = FUNC0(&rpdev->dev);

	FUNC1(&ssr->nb);
}