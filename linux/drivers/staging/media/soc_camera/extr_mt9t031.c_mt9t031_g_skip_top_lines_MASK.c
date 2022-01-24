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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct mt9t031 {int /*<<< orphan*/  y_skip_top; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct mt9t031* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u32 *lines)
{
	struct i2c_client *client = FUNC1(sd);
	struct mt9t031 *mt9t031 = FUNC0(client);

	*lines = mt9t031->y_skip_top;

	return 0;
}