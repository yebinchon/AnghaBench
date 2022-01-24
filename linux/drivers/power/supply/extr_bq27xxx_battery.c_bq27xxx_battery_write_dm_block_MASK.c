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
struct bq27xxx_dm_buf {int dirty; int /*<<< orphan*/  data; int /*<<< orphan*/  block; int /*<<< orphan*/  class; } ;
struct bq27xxx_device_info {int opts; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27XXX_DM_BLOCK ; 
 int /*<<< orphan*/  BQ27XXX_DM_CKSUM ; 
 int /*<<< orphan*/  BQ27XXX_DM_CLASS ; 
 int /*<<< orphan*/  BQ27XXX_DM_CTRL ; 
 int /*<<< orphan*/  BQ27XXX_DM_DATA ; 
 int /*<<< orphan*/  BQ27XXX_DM_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BQ27XXX_O_CFGUP ; 
 int /*<<< orphan*/  FUNC1 (struct bq27xxx_dm_buf*) ; 
 int FUNC2 (struct bq27xxx_device_info*) ; 
 int FUNC3 (struct bq27xxx_device_info*) ; 
 int FUNC4 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct bq27xxx_device_info *di,
					  struct bq27xxx_dm_buf *buf)
{
	bool cfgup = di->opts & BQ27XXX_O_CFGUP;
	int ret;

	if (!buf->dirty)
		return 0;

	if (cfgup) {
		ret = FUNC2(di);
		if (ret < 0)
			return ret;
	}

	ret = FUNC4(di, BQ27XXX_DM_CTRL, 0, true);
	if (ret < 0)
		goto out;

	ret = FUNC4(di, BQ27XXX_DM_CLASS, buf->class, true);
	if (ret < 0)
		goto out;

	ret = FUNC4(di, BQ27XXX_DM_BLOCK, buf->block, true);
	if (ret < 0)
		goto out;

	FUNC0(1);

	ret = FUNC5(di, BQ27XXX_DM_DATA, buf->data, BQ27XXX_DM_SZ);
	if (ret < 0)
		goto out;

	ret = FUNC4(di, BQ27XXX_DM_CKSUM,
			    FUNC1(buf), true);
	if (ret < 0)
		goto out;

	/* DO NOT read BQ27XXX_DM_CKSUM here to verify it! That may cause NVM
	 * corruption on the '425 chip (and perhaps others), which can damage
	 * the chip.
	 */

	if (cfgup) {
		FUNC0(1);
		ret = FUNC3(di);
		if (ret < 0)
			return ret;
	} else {
		FUNC0(100); /* flash DM updates in <100ms */
	}

	buf->dirty = false;

	return 0;

out:
	if (cfgup)
		FUNC3(di);

	FUNC6(di->dev, "bus error writing chip memory: %d\n", ret);
	return ret;
}