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
struct v4l2_subdev {int dummy; } ;
struct ov9740_priv {int model; int revision; int manid; int smiaver; int /*<<< orphan*/  subdev; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OV9740_MANUFACTURER_ID ; 
 int /*<<< orphan*/  OV9740_MODEL_ID_HI ; 
 int /*<<< orphan*/  OV9740_MODEL_ID_LO ; 
 int /*<<< orphan*/  OV9740_REVISION_NUMBER ; 
 int /*<<< orphan*/  OV9740_SMIA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct ov9740_priv* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC1(client);
	struct ov9740_priv *priv = FUNC4(sd);
	u8 modelhi, modello;
	int ret;

	ret = FUNC3(&priv->subdev, 1);
	if (ret < 0)
		return ret;

	/*
	 * check and show product ID and manufacturer ID
	 */
	ret = FUNC2(client, OV9740_MODEL_ID_HI, &modelhi);
	if (ret < 0)
		goto done;

	ret = FUNC2(client, OV9740_MODEL_ID_LO, &modello);
	if (ret < 0)
		goto done;

	priv->model = (modelhi << 8) | modello;

	ret = FUNC2(client, OV9740_REVISION_NUMBER, &priv->revision);
	if (ret < 0)
		goto done;

	ret = FUNC2(client, OV9740_MANUFACTURER_ID, &priv->manid);
	if (ret < 0)
		goto done;

	ret = FUNC2(client, OV9740_SMIA_VERSION, &priv->smiaver);
	if (ret < 0)
		goto done;

	if (priv->model != 0x9740) {
		ret = -ENODEV;
		goto done;
	}

	FUNC0(&client->dev, "ov9740 Model ID 0x%04x, Revision 0x%02x, Manufacturer 0x%02x, SMIA Version 0x%02x\n",
		 priv->model, priv->revision, priv->manid, priv->smiaver);

	ret = FUNC5(&priv->hdl);

done:
	FUNC3(&priv->subdev, 0);
	return ret;
}