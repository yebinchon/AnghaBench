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
struct surface3_button_data {struct platform_device** children; } ;
struct platform_device {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int BUTTON_TYPES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  SURFACE_BUTTON_OBJ_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct surface3_button_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct surface3_button_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  surface3_button_surface3 ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
				 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct surface3_button_data *priv;
	struct platform_device *pd;
	int i;
	int error;

	if (FUNC9(FUNC3(FUNC0(&client->dev)),
		    SURFACE_BUTTON_OBJ_NAME,
		    FUNC8(SURFACE_BUTTON_OBJ_NAME)))
		return -ENODEV;

	error = FUNC6(dev, NULL);
	if (error < 0) {
		FUNC4(dev, "no GPIO attached, ignoring...\n");
		return error;
	}

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(client, priv);

	for (i = 0; i < BUTTON_TYPES; i++) {
		pd = FUNC10(client,
						   surface3_button_surface3,
						   i == 0);
		if (FUNC1(pd)) {
			error = FUNC2(pd);
			if (error != -ENODEV) {
				FUNC11(client);
				return error;
			}
			continue;
		}

		priv->children[i] = pd;
	}

	if (!priv->children[0] && !priv->children[1])
		return -ENODEV;

	return 0;
}