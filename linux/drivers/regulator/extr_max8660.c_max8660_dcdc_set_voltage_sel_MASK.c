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
typedef  unsigned int u8 ;
struct regulator_dev {int dummy; } ;
struct max8660 {int dummy; } ;

/* Variables and functions */
 unsigned int MAX8660_ADTV2 ; 
 unsigned int MAX8660_SDTV2 ; 
 scalar_t__ MAX8660_V3 ; 
 unsigned int MAX8660_VCC1 ; 
 int FUNC0 (struct max8660*,unsigned int,int,unsigned int) ; 
 struct max8660* FUNC1 (struct regulator_dev*) ; 
 scalar_t__ FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					unsigned int selector)
{
	struct max8660 *max8660 = FUNC1(rdev);
	u8 reg, bits;
	int ret;

	reg = (FUNC2(rdev) == MAX8660_V3) ? MAX8660_ADTV2 : MAX8660_SDTV2;
	ret = FUNC0(max8660, reg, 0, selector);
	if (ret)
		return ret;

	/* Select target voltage register and activate regulation */
	bits = (FUNC2(rdev) == MAX8660_V3) ? 0x03 : 0x30;
	return FUNC0(max8660, MAX8660_VCC1, 0xff, bits);
}