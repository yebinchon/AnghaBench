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
struct tps65090_regulator {TYPE_2__* dev; TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {unsigned int enable_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,unsigned int) ; 
 int FUNC1 (struct device*,unsigned int,int) ; 
 int FUNC2 (struct device*,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(
	struct tps65090_regulator *ri, bool enable)
{
	int ret;
	struct device *parent = ri->dev->parent;
	unsigned int reg_en_reg = ri->desc->enable_reg;

	if (enable)
		ret = FUNC2(parent, reg_en_reg, 1);
	else
		ret =  FUNC1(parent, reg_en_reg, 1);
	if (ret < 0)
		FUNC0(ri->dev, "Error in updating reg 0x%x\n", reg_en_reg);
	return ret;
}