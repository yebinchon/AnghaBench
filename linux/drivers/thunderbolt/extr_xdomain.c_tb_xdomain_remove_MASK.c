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
struct tb_xdomain {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tb_xdomain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_xdomain*) ; 
 int /*<<< orphan*/  unregister_service ; 

void FUNC8(struct tb_xdomain *xd)
{
	FUNC7(xd);

	FUNC0(&xd->dev, xd, unregister_service);

	/*
	 * Undo runtime PM here explicitly because it is possible that
	 * the XDomain was never added to the bus and thus device_del()
	 * is not called for it (device_del() would handle this otherwise).
	 */
	FUNC3(&xd->dev);
	FUNC4(&xd->dev);
	FUNC5(&xd->dev);

	if (!FUNC1(&xd->dev))
		FUNC6(&xd->dev);
	else
		FUNC2(&xd->dev);
}