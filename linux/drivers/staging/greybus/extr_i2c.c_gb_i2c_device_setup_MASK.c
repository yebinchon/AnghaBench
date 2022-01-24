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
struct gb_i2c_functionality_response {int /*<<< orphan*/  functionality; } ;
struct gb_i2c_device {int /*<<< orphan*/  functionality; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  response ;

/* Variables and functions */
 int /*<<< orphan*/  GB_I2C_TYPE_FUNCTIONALITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_i2c_functionality_response*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gb_i2c_device *gb_i2c_dev)
{
	struct gb_i2c_functionality_response response;
	u32 functionality;
	int ret;

	ret = FUNC1(gb_i2c_dev->connection,
				GB_I2C_TYPE_FUNCTIONALITY,
				NULL, 0, &response, sizeof(response));
	if (ret)
		return ret;

	functionality = FUNC2(response.functionality);
	gb_i2c_dev->functionality = FUNC0(functionality);

	return 0;
}