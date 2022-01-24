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
struct gb_pwm_chip {int /*<<< orphan*/  chip; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 struct gb_pwm_chip* FUNC2 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gbphy_device*) ; 
 int FUNC4 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gbphy_device *gbphy_dev)
{
	struct gb_pwm_chip *pwmc = FUNC2(gbphy_dev);
	struct gb_connection *connection = pwmc->connection;
	int ret;

	ret = FUNC4(gbphy_dev);
	if (ret)
		FUNC3(gbphy_dev);

	FUNC6(&pwmc->chip);
	FUNC1(connection);
	FUNC0(connection);
	FUNC5(pwmc);
}