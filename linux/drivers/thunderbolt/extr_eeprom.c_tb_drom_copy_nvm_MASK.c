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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct tb_switch {int* drom; int /*<<< orphan*/  uid; int /*<<< orphan*/  dma_port; scalar_t__ cap_plug_events; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tb_switch*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct tb_switch *sw, u16 *size)
{
	u32 drom_offset;
	int ret;

	if (!sw->dma_port)
		return -ENODEV;

	ret = FUNC4(sw, &drom_offset, TB_CFG_SWITCH,
			 sw->cap_plug_events + 12, 1);
	if (ret)
		return ret;

	if (!drom_offset)
		return -ENODEV;

	ret = FUNC0(sw->dma_port, drom_offset + 14, size,
				  sizeof(*size));
	if (ret)
		return ret;

	/* Size includes CRC8 + UID + CRC32 */
	*size += 1 + 8 + 4;
	sw->drom = FUNC2(*size, GFP_KERNEL);
	if (!sw->drom)
		return -ENOMEM;

	ret = FUNC0(sw->dma_port, drom_offset, sw->drom, *size);
	if (ret)
		goto err_free;

	/*
	 * Read UID from the minimal DROM because the one in NVM is just
	 * a placeholder.
	 */
	FUNC3(sw, &sw->uid);
	return 0;

err_free:
	FUNC1(sw->drom);
	sw->drom = NULL;
	return ret;
}