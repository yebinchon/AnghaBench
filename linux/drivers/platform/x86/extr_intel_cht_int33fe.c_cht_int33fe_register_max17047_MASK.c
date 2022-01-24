#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* fwnode; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {char* dev_name; struct fwnode_handle* fwnode; int /*<<< orphan*/  type; } ;
struct fwnode_handle {int /*<<< orphan*/  secondary; } ;
struct device {int dummy; } ;
struct cht_int33fe_data {int /*<<< orphan*/  max17047; } ;
typedef  int /*<<< orphan*/  board_info ;
struct TYPE_3__ {struct fwnode_handle* secondary; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 size_t INT33FE_NODE_MAX17047 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cht_int33fe_check_for_max17047 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nodes ; 
 struct fwnode_handle* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct device *dev, struct cht_int33fe_data *data)
{
	struct i2c_client *max17047 = NULL;
	struct i2c_board_info board_info;
	struct fwnode_handle *fwnode;
	int ret;

	fwnode = FUNC7(&nodes[INT33FE_NODE_MAX17047]);
	if (!fwnode)
		return -ENODEV;

	FUNC5(&max17047, cht_int33fe_check_for_max17047);
	if (max17047) {
		/* Pre-existing i2c-client for the max17047, add device-props */
		fwnode->secondary = FUNC0(-ENODEV);
		max17047->dev.fwnode->secondary = fwnode;
		/* And re-probe to get the new device-props applied. */
		ret = FUNC3(&max17047->dev);
		if (ret)
			FUNC2(dev, "Reprobing max17047 error: %d\n", ret);
		return 0;
	}

	FUNC6(&board_info, 0, sizeof(board_info));
	FUNC8(board_info.type, "max17047", I2C_NAME_SIZE);
	board_info.dev_name = "max17047";
	board_info.fwnode = fwnode;
	data->max17047 = FUNC4(dev, 1, &board_info);

	return FUNC1(data->max17047);
}