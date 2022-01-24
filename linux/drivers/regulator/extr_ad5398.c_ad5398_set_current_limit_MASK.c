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
struct regulator_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ad5398_chip_info {unsigned int max_uA; unsigned int min_uA; int current_level; unsigned int current_offset; unsigned int current_mask; struct i2c_client* client; } ;

/* Variables and functions */
 unsigned short AD5398_CURRENT_EN_MASK ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 int EINVAL ; 
 int FUNC1 (struct ad5398_chip_info*,unsigned int) ; 
 int FUNC2 (struct i2c_client*,unsigned short*) ; 
 int FUNC3 (struct i2c_client*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct ad5398_chip_info* FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev, int min_uA, int max_uA)
{
	struct ad5398_chip_info *chip = FUNC5(rdev);
	struct i2c_client *client = chip->client;
	unsigned range_uA = chip->max_uA - chip->min_uA;
	unsigned selector;
	unsigned short data;
	int ret;

	if (min_uA < chip->min_uA)
		min_uA = chip->min_uA;
	if (max_uA > chip->max_uA)
		max_uA = chip->max_uA;

	if (min_uA > chip->max_uA || max_uA < chip->min_uA)
		return -EINVAL;

	selector = FUNC0((min_uA - chip->min_uA) * chip->current_level,
				range_uA);
	if (FUNC1(chip, selector) > max_uA)
		return -EINVAL;

	FUNC4(&client->dev, "changing current %duA\n",
		FUNC1(chip, selector));

	/* read chip enable bit */
	ret = FUNC2(client, &data);
	if (ret < 0)
		return ret;

	/* prepare register data */
	selector = (selector << chip->current_offset) & chip->current_mask;
	data = (unsigned short)selector | (data & AD5398_CURRENT_EN_MASK);

	/* write the new current value back as well as enable bit */
	ret = FUNC3(client, data);

	return ret;
}