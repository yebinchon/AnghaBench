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
typedef  scalar_t__ u8 ;
struct bq27xxx_dm_buf {int has_data; int dirty; int /*<<< orphan*/  data; int /*<<< orphan*/  block; int /*<<< orphan*/  class; } ;
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27XXX_DM_BLOCK ; 
 int /*<<< orphan*/  BQ27XXX_DM_CKSUM ; 
 int /*<<< orphan*/  BQ27XXX_DM_CLASS ; 
 int /*<<< orphan*/  BQ27XXX_DM_DATA ; 
 int /*<<< orphan*/  BQ27XXX_DM_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct bq27xxx_dm_buf*) ; 
 int FUNC2 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct bq27xxx_device_info *di,
					 struct bq27xxx_dm_buf *buf)
{
	int ret;

	buf->has_data = false;

	ret = FUNC4(di, BQ27XXX_DM_CLASS, buf->class, true);
	if (ret < 0)
		goto out;

	ret = FUNC4(di, BQ27XXX_DM_BLOCK, buf->block, true);
	if (ret < 0)
		goto out;

	FUNC0(1);

	ret = FUNC3(di, BQ27XXX_DM_DATA, buf->data, BQ27XXX_DM_SZ);
	if (ret < 0)
		goto out;

	ret = FUNC2(di, BQ27XXX_DM_CKSUM, true);
	if (ret < 0)
		goto out;

	if ((u8)ret != FUNC1(buf)) {
		ret = -EINVAL;
		goto out;
	}

	buf->has_data = true;
	buf->dirty = false;

	return 0;

out:
	FUNC5(di->dev, "bus error reading chip memory: %d\n", ret);
	return ret;
}