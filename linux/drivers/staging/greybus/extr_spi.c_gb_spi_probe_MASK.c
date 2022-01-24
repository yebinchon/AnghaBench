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
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 struct gb_connection* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int FUNC5 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct gbphy_device*,struct gb_connection*) ; 
 int FUNC7 (struct gb_connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spilib_ops ; 

__attribute__((used)) static int FUNC10(struct gbphy_device *gbphy_dev,
			const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	int ret;

	connection = FUNC2(gbphy_dev->bundle,
					  FUNC9(gbphy_dev->cport_desc->id),
					  NULL);
	if (FUNC0(connection))
		return FUNC1(connection);

	ret = FUNC5(connection);
	if (ret)
		goto exit_connection_destroy;

	ret = FUNC7(connection, &gbphy_dev->dev, spilib_ops);
	if (ret)
		goto exit_connection_disable;

	FUNC6(gbphy_dev, connection);

	FUNC8(gbphy_dev);
	return 0;

exit_connection_disable:
	FUNC4(connection);
exit_connection_destroy:
	FUNC3(connection);

	return ret;
}