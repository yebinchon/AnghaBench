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
struct gbphy_device {int dummy; } ;
struct gb_gpio_controller {struct gb_gpio_controller* lines; int /*<<< orphan*/  chip; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 struct gb_gpio_controller* FUNC3 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct gbphy_device*) ; 
 int FUNC5 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_gpio_controller*) ; 

__attribute__((used)) static void FUNC8(struct gbphy_device *gbphy_dev)
{
	struct gb_gpio_controller *ggc = FUNC3(gbphy_dev);
	struct gb_connection *connection = ggc->connection;
	int ret;

	ret = FUNC5(gbphy_dev);
	if (ret)
		FUNC4(gbphy_dev);

	FUNC2(connection);
	FUNC6(&ggc->chip);
	FUNC1(connection);
	FUNC0(connection);
	FUNC7(ggc->lines);
	FUNC7(ggc);
}