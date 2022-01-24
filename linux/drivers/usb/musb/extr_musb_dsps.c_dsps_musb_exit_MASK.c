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
struct musb {int /*<<< orphan*/  phy; int /*<<< orphan*/  dev_timer; struct device* controller; } ;
struct dsps_glue {int /*<<< orphan*/  dbgfs_root; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dsps_glue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct musb *musb)
{
	struct device *dev = musb->controller;
	struct dsps_glue *glue = FUNC2(dev->parent);

	FUNC1(&musb->dev_timer);
	FUNC4(musb->phy);
	FUNC3(musb->phy);
	FUNC0(glue->dbgfs_root);

	return 0;
}