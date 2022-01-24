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
typedef  int /*<<< orphan*/  u8 ;
struct bq27xxx_device_info {int opts; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BQ27XXX_CURRENT_CONSTANT ; 
 int BQ27XXX_O_ZERO ; 
 int BQ27XXX_RS ; 
 int FUNC0 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bq27xxx_device_info *di, u8 reg)
{
	int charge;

	charge = FUNC0(di, reg, false);
	if (charge < 0) {
		FUNC1(di->dev, "error reading charge register %02x: %d\n",
			reg, charge);
		return charge;
	}

	if (di->opts & BQ27XXX_O_ZERO)
		charge *= BQ27XXX_CURRENT_CONSTANT / BQ27XXX_RS;
	else
		charge *= 1000;

	return charge;
}