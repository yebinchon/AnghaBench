#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rt9455_info {int /*<<< orphan*/ * regmap_fields; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EIO ; 
 size_t F_RST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct rt9455_info *info)
{
	struct device *dev = &info->client->dev;
	unsigned int v;
	int ret, limit = 100;

	ret = FUNC2(info->regmap_fields[F_RST], 0x01);
	if (ret) {
		FUNC0(dev, "Failed to set RST bit\n");
		return ret;
	}

	/*
	 * To make sure that reset operation has finished, loop until RST bit
	 * is set to 0.
	 */
	do {
		ret = FUNC1(info->regmap_fields[F_RST], &v);
		if (ret) {
			FUNC0(dev, "Failed to read RST bit\n");
			return ret;
		}

		if (!v)
			break;

		FUNC3(10, 100);
	} while (--limit);

	if (!limit)
		return -EIO;

	return 0;
}