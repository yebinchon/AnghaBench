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
struct bq27xxx_device_info {int opts; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BQ27XXX_O_ZERO ; 
 int /*<<< orphan*/  BQ27XXX_REG_TEMP ; 
 int FUNC0 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct bq27xxx_device_info *di)
{
	int temp;

	temp = FUNC0(di, BQ27XXX_REG_TEMP, false);
	if (temp < 0) {
		FUNC1(di->dev, "error reading temperature\n");
		return temp;
	}

	if (di->opts & BQ27XXX_O_ZERO)
		temp = 5 * temp / 2;

	return temp;
}