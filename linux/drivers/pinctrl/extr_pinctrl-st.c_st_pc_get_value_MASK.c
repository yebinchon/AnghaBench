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
struct regmap_field {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct reg_field FUNC0 (int,int,int) ; 
 struct regmap_field* FUNC1 (struct device*,struct regmap*,struct reg_field) ; 

__attribute__((used)) static struct regmap_field *FUNC2(struct device *dev,
					    struct regmap *regmap, int bank,
					    int data, int lsb, int msb)
{
	struct reg_field reg = FUNC0((data + bank) * 4, lsb, msb);

	if (data < 0)
		return NULL;

	return FUNC1(dev, regmap, reg);
}