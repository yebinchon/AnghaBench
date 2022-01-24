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
struct mt9t031 {int /*<<< orphan*/  subdev; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MT9T031_CHIP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct mt9t031* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct mt9t031 *mt9t031 = FUNC5(client);
	s32 data;
	int ret;

	ret = FUNC3(&mt9t031->subdev, 1);
	if (ret < 0)
		return ret;

	ret = FUNC2(client);
	if (ret < 0) {
		FUNC0(&client->dev, "Failed to initialise the camera\n");
		goto done;
	}

	/* Read out the chip version register */
	data = FUNC4(client, MT9T031_CHIP_VERSION);

	switch (data) {
	case 0x1621:
		break;
	default:
		FUNC0(&client->dev,
			"No MT9T031 chip detected, register read %x\n", data);
		ret = -ENODEV;
		goto done;
	}

	FUNC1(&client->dev, "Detected a MT9T031 chip ID %x\n", data);

	ret = FUNC6(&mt9t031->hdl);

done:
	FUNC3(&mt9t031->subdev, 0);

	return ret;
}