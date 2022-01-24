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
struct pmem_device {int data_offset; int /*<<< orphan*/  bb; void* virt_addr; } ;
struct page {int dummy; } ;
typedef  int sector_t ;
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pmem_device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,void*,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static blk_status_t FUNC7(struct pmem_device *pmem, struct page *page,
			unsigned int len, unsigned int off, unsigned int op,
			sector_t sector)
{
	blk_status_t rc = BLK_STS_OK;
	bool bad_pmem = false;
	phys_addr_t pmem_off = sector * 512 + pmem->data_offset;
	void *pmem_addr = pmem->virt_addr + pmem_off;

	if (FUNC5(FUNC1(&pmem->bb, sector, len)))
		bad_pmem = true;

	if (!FUNC2(op)) {
		if (FUNC5(bad_pmem))
			rc = BLK_STS_IOERR;
		else {
			rc = FUNC4(page, off, pmem_addr, len);
			FUNC0(page);
		}
	} else {
		/*
		 * Note that we write the data both before and after
		 * clearing poison.  The write before clear poison
		 * handles situations where the latest written data is
		 * preserved and the clear poison operation simply marks
		 * the address range as valid without changing the data.
		 * In this case application software can assume that an
		 * interrupted write will either return the new good
		 * data or an error.
		 *
		 * However, if pmem_clear_poison() leaves the data in an
		 * indeterminate state we need to perform the write
		 * after clear poison.
		 */
		FUNC0(page);
		FUNC6(pmem_addr, page, off, len);
		if (FUNC5(bad_pmem)) {
			rc = FUNC3(pmem, pmem_off, len);
			FUNC6(pmem_addr, page, off, len);
		}
	}

	return rc;
}