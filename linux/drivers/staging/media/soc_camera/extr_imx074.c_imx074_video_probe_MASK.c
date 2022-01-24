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
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FRAME_LENGTH_LINES_HI ; 
 int FRAME_LENGTH_LINES_LO ; 
 int GROUPED_PARAMETER_HOLD ; 
 int HADDAVE ; 
 int HMODEADD ; 
 int IMAGE_ORIENTATION ; 
 int LANESEL ; 
 int PLL_MULTIPLIER ; 
 int PLSTATIM ; 
 int PRE_PLL_CLK_DIV ; 
 int SHUTTER ; 
 int VAPPLINE_END ; 
 int VAPPLINE_START ; 
 int VMODEADD ; 
 int VNDMY_ABLMGSHLMT ; 
 int X_EVEN_INC ; 
 int X_ODD_INC ; 
 int X_OUTPUT_SIZE_LSB ; 
 int X_OUTPUT_SIZE_MSB ; 
 int YADDR_END ; 
 int YADDR_START ; 
 int Y_EVEN_INC ; 
 int Y_ODD_INC ; 
 int Y_OPBADDR_START_DI ; 
 int Y_OUTPUT_SIZE_LSB ; 
 int Y_OUTPUT_SIZE_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *subdev = FUNC1(client);
	int ret;
	u16 id;

	ret = FUNC2(subdev, 1);
	if (ret < 0)
		return ret;

	/* Read sensor Model ID */
	ret = FUNC3(client, 0);
	if (ret < 0)
		goto done;

	id = ret << 8;

	ret = FUNC3(client, 1);
	if (ret < 0)
		goto done;

	id |= ret;

	FUNC0(&client->dev, "Chip ID 0x%04x detected\n", id);

	if (id != 0x74) {
		ret = -ENODEV;
		goto done;
	}

	/* PLL Setting EXTCLK=24MHz, 22.5times */
	FUNC4(client, PLL_MULTIPLIER, 0x2D);
	FUNC4(client, PRE_PLL_CLK_DIV, 0x02);
	FUNC4(client, PLSTATIM, 0x4B);

	/* 2-lane mode */
	FUNC4(client, 0x3024, 0x00);

	FUNC4(client, IMAGE_ORIENTATION, 0x00);

	/* select RAW mode:
	 * 0x08+0x08 = top 8 bits
	 * 0x0a+0x08 = compressed 8-bits
	 * 0x0a+0x0a = 10 bits
	 */
	FUNC4(client, 0x0112, 0x08);
	FUNC4(client, 0x0113, 0x08);

	/* Base setting for High frame mode */
	FUNC4(client, VNDMY_ABLMGSHLMT, 0x80);
	FUNC4(client, Y_OPBADDR_START_DI, 0x08);
	FUNC4(client, 0x3015, 0x37);
	FUNC4(client, 0x301C, 0x01);
	FUNC4(client, 0x302C, 0x05);
	FUNC4(client, 0x3031, 0x26);
	FUNC4(client, 0x3041, 0x60);
	FUNC4(client, 0x3051, 0x24);
	FUNC4(client, 0x3053, 0x34);
	FUNC4(client, 0x3057, 0xC0);
	FUNC4(client, 0x305C, 0x09);
	FUNC4(client, 0x305D, 0x07);
	FUNC4(client, 0x3060, 0x30);
	FUNC4(client, 0x3065, 0x00);
	FUNC4(client, 0x30AA, 0x08);
	FUNC4(client, 0x30AB, 0x1C);
	FUNC4(client, 0x30B0, 0x32);
	FUNC4(client, 0x30B2, 0x83);
	FUNC4(client, 0x30D3, 0x04);
	FUNC4(client, 0x3106, 0x78);
	FUNC4(client, 0x310C, 0x82);
	FUNC4(client, 0x3304, 0x05);
	FUNC4(client, 0x3305, 0x04);
	FUNC4(client, 0x3306, 0x11);
	FUNC4(client, 0x3307, 0x02);
	FUNC4(client, 0x3308, 0x0C);
	FUNC4(client, 0x3309, 0x06);
	FUNC4(client, 0x330A, 0x08);
	FUNC4(client, 0x330B, 0x04);
	FUNC4(client, 0x330C, 0x08);
	FUNC4(client, 0x330D, 0x06);
	FUNC4(client, 0x330E, 0x01);
	FUNC4(client, 0x3381, 0x00);

	/* V : 1/2V-addition (1,3), H : 1/2H-averaging (1,3) -> Full HD */
	/* 1608 = 1560 + 48 (black lines) */
	FUNC4(client, FRAME_LENGTH_LINES_HI, 0x06);
	FUNC4(client, FRAME_LENGTH_LINES_LO, 0x48);
	FUNC4(client, YADDR_START, 0x00);
	FUNC4(client, YADDR_END, 0x2F);
	/* 0x838 == 2104 */
	FUNC4(client, X_OUTPUT_SIZE_MSB, 0x08);
	FUNC4(client, X_OUTPUT_SIZE_LSB, 0x38);
	/* 0x618 == 1560 */
	FUNC4(client, Y_OUTPUT_SIZE_MSB, 0x06);
	FUNC4(client, Y_OUTPUT_SIZE_LSB, 0x18);
	FUNC4(client, X_EVEN_INC, 0x01);
	FUNC4(client, X_ODD_INC, 0x03);
	FUNC4(client, Y_EVEN_INC, 0x01);
	FUNC4(client, Y_ODD_INC, 0x03);
	FUNC4(client, HMODEADD, 0x00);
	FUNC4(client, VMODEADD, 0x16);
	FUNC4(client, VAPPLINE_START, 0x24);
	FUNC4(client, VAPPLINE_END, 0x53);
	FUNC4(client, SHUTTER, 0x00);
	FUNC4(client, HADDAVE, 0x80);

	FUNC4(client, LANESEL, 0x00);

	FUNC4(client, GROUPED_PARAMETER_HOLD, 0x00);	/* off */

	ret = 0;

done:
	FUNC2(subdev, 0);
	return ret;
}