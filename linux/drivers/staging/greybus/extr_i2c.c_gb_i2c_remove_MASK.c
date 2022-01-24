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
struct gb_i2c_device {int /*<<< orphan*/  adapter; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 struct gb_i2c_device* FUNC2 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gbphy_device*) ; 
 int FUNC4 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_i2c_device*) ; 

__attribute__((used)) static void FUNC7(struct gbphy_device *gbphy_dev)
{
	struct gb_i2c_device *gb_i2c_dev = FUNC2(gbphy_dev);
	struct gb_connection *connection = gb_i2c_dev->connection;
	int ret;

	ret = FUNC4(gbphy_dev);
	if (ret)
		FUNC3(gbphy_dev);

	FUNC5(&gb_i2c_dev->adapter);
	FUNC1(connection);
	FUNC0(connection);
	FUNC6(gb_i2c_dev);
}