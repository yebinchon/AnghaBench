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
struct pmem_device {int data_offset; int phys_addr; int virt_addr; scalar_t__ bb_state; int /*<<< orphan*/  bb; } ;
struct device {int dummy; } ;
typedef  int sector_t ;
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned long long,long,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmem_device*,int,long) ; 
 long FUNC4 (struct device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct device* FUNC6 (struct pmem_device*) ; 

__attribute__((used)) static blk_status_t FUNC7(struct pmem_device *pmem,
		phys_addr_t offset, unsigned int len)
{
	struct device *dev = FUNC6(pmem);
	sector_t sector;
	long cleared;
	blk_status_t rc = BLK_STS_OK;

	sector = (offset - pmem->data_offset) / 512;

	cleared = FUNC4(dev, pmem->phys_addr + offset, len);
	if (cleared < len)
		rc = BLK_STS_IOERR;
	if (cleared > 0 && cleared / 512) {
		FUNC3(pmem, pmem->phys_addr + offset, cleared);
		cleared /= 512;
		FUNC2(dev, "%#llx clear %ld sector%s\n",
				(unsigned long long) sector, cleared,
				cleared > 1 ? "s" : "");
		FUNC1(&pmem->bb, sector, cleared);
		if (pmem->bb_state)
			FUNC5(pmem->bb_state);
	}

	FUNC0(pmem->virt_addr + offset, len);

	return rc;
}