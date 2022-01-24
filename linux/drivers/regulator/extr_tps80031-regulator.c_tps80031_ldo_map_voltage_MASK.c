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
struct tps80031_regulator {int device_flags; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ TPS80031 ; 
 scalar_t__ TPS80031_REGULATOR_LDO2 ; 
 scalar_t__ TPS80032 ; 
 int TRACK_MODE_ENABLE ; 
 struct tps80031_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,int,int) ; 
 int FUNC2 (struct regulator_dev*,int,int) ; 
 struct device* FUNC3 (struct regulator_dev*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev,
				    int min_uV, int max_uV)
{
	struct tps80031_regulator *ri = FUNC0(rdev);
	struct device *parent = FUNC3(rdev);

	/* Check for valid setting for TPS80031 or TPS80032-ES1.0 */
	if ((ri->rinfo->desc.id == TPS80031_REGULATOR_LDO2) &&
			(ri->device_flags & TRACK_MODE_ENABLE)) {
		if (((FUNC4(parent) == TPS80031) ||
			((FUNC4(parent) == TPS80032) &&
			(FUNC5(parent) == 0x0)))) {
			return FUNC1(rdev, min_uV,
							     max_uV);
		}
	}

	return FUNC2(rdev, min_uV, max_uV);
}