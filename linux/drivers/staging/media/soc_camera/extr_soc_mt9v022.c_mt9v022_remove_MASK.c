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
struct soc_camera_subdev_desc {int /*<<< orphan*/  (* free_bus ) (struct soc_camera_subdev_desc*) ;} ;
struct mt9v022 {int /*<<< orphan*/  hdl; int /*<<< orphan*/  subdev; int /*<<< orphan*/  clk; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct soc_camera_subdev_desc* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_camera_subdev_desc*) ; 
 struct mt9v022* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct mt9v022 *mt9v022 = FUNC2(client);
	struct soc_camera_subdev_desc *ssdd = FUNC0(client);

	FUNC3(mt9v022->clk);
	FUNC5(&mt9v022->subdev);
	if (ssdd->free_bus)
		ssdd->free_bus(ssdd);
	FUNC4(&mt9v022->hdl);

	return 0;
}