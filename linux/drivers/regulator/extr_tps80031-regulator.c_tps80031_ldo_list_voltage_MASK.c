#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tps80031_regulator {int device_flags; int /*<<< orphan*/  dev; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
typedef  unsigned int sel ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TPS80031 ; 
 scalar_t__ TPS80031_REGULATOR_LDO2 ; 
 scalar_t__ TPS80032 ; 
 int TRACK_MODE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct tps80031_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*,unsigned int) ; 
 struct device* FUNC3 (struct regulator_dev*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
				     unsigned int sel)
{
	struct tps80031_regulator *ri = FUNC1(rdev);
	struct device *parent = FUNC3(rdev);

	/* Check for valid setting for TPS80031 or TPS80032-ES1.0 */
	if ((ri->rinfo->desc.id == TPS80031_REGULATOR_LDO2) &&
			(ri->device_flags & TRACK_MODE_ENABLE)) {
		unsigned nvsel = (sel) & 0x1F;
		if (((FUNC4(parent) == TPS80031) ||
			((FUNC4(parent) == TPS80032) &&
			(FUNC5(parent) == 0x0))) &&
			((nvsel == 0x0) || (nvsel >= 0x19 && nvsel <= 0x1F))) {
				FUNC0(ri->dev,
					"Invalid sel %d in track mode LDO2\n",
					nvsel);
				return -EINVAL;
		}
	}

	return FUNC2(rdev, sel);
}