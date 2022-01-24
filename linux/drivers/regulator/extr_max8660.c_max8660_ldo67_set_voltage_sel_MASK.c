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
struct max8660 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8660_L12VCR ; 
 scalar_t__ MAX8660_V6 ; 
 int FUNC0 (struct max8660*,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct max8660* FUNC1 (struct regulator_dev*) ; 
 scalar_t__ FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					 unsigned int selector)
{
	struct max8660 *max8660 = FUNC1(rdev);

	if (FUNC2(rdev) == MAX8660_V6)
		return FUNC0(max8660, MAX8660_L12VCR, 0xf0, selector);
	else
		return FUNC0(max8660, MAX8660_L12VCR, 0x0f,
				     selector << 4);
}