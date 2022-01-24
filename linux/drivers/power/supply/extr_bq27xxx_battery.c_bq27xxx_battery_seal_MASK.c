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
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27XXX_REG_CTRL ; 
 int /*<<< orphan*/  BQ27XXX_SEALED ; 
 int FUNC0 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct bq27xxx_device_info *di)
{
	int ret;

	ret = FUNC0(di, BQ27XXX_REG_CTRL, BQ27XXX_SEALED, false);
	if (ret < 0) {
		FUNC1(di->dev, "bus error on seal: %d\n", ret);
		return ret;
	}

	return 0;
}