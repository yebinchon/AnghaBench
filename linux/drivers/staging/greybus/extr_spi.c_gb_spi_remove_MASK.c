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
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 struct gb_connection* FUNC2 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gbphy_device*) ; 
 int FUNC5 (struct gbphy_device*) ; 

__attribute__((used)) static void FUNC6(struct gbphy_device *gbphy_dev)
{
	struct gb_connection *connection = FUNC2(gbphy_dev);
	int ret;

	ret = FUNC5(gbphy_dev);
	if (ret)
		FUNC4(gbphy_dev);

	FUNC3(connection);
	FUNC1(connection);
	FUNC0(connection);
}