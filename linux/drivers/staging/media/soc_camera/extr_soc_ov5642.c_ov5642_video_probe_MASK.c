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
typedef  int u8 ;
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  REG_CHIP_ID_HIGH ; 
 int /*<<< orphan*/  REG_CHIP_ID_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct v4l2_subdev *subdev = FUNC1(client);
	int ret;
	u8 id_high, id_low;
	u16 id;

	ret = FUNC2(subdev, 1);
	if (ret < 0)
		return ret;

	/* Read sensor Model ID */
	ret = FUNC3(client, REG_CHIP_ID_HIGH, &id_high);
	if (ret < 0)
		goto done;

	id = id_high << 8;

	ret = FUNC3(client, REG_CHIP_ID_LOW, &id_low);
	if (ret < 0)
		goto done;

	id |= id_low;

	FUNC0(&client->dev, "Chip ID 0x%04x detected\n", id);

	if (id != 0x5642) {
		ret = -ENODEV;
		goto done;
	}

	ret = 0;

done:
	FUNC2(subdev, 0);
	return ret;
}