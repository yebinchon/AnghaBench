#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start; } ;
struct nd_namespace_io {int size; int addr; int /*<<< orphan*/  bb; TYPE_1__ res; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct nd_namespace_common {TYPE_2__ dev; } ;
typedef  int sector_t ;
typedef  int resource_size_t ;

/* Variables and functions */
 unsigned int FUNC0 (size_t,int) ; 
 int EFAULT ; 
 int EIO ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 unsigned long NVDIMM_IO_ATOMIC ; 
 int READ ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,void*,size_t) ; 
 scalar_t__ FUNC7 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 long FUNC9 (TYPE_2__*,int,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nd_namespace_io* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct nd_namespace_common *ndns,
		resource_size_t offset, void *buf, size_t size, int rw,
		unsigned long flags)
{
	struct nd_namespace_io *nsio = FUNC11(&ndns->dev);
	unsigned int sz_align = FUNC0(size + (offset & (512 - 1)), 512);
	sector_t sector = offset >> 9;
	int rc = 0, ret = 0;

	if (FUNC13(!size))
		return 0;

	if (FUNC13(offset + size > nsio->size)) {
		FUNC4(&ndns->dev, 1, "request out of range\n");
		return -EFAULT;
	}

	if (rw == READ) {
		if (FUNC13(FUNC5(&nsio->bb, sector, sz_align)))
			return -EIO;
		if (FUNC7(buf, nsio->addr + offset, size) != 0)
			return -EIO;
		return 0;
	}

	if (FUNC13(FUNC5(&nsio->bb, sector, sz_align))) {
		if (FUNC1(offset, 512) && FUNC1(size, 512)
				&& !(flags & NVDIMM_IO_ATOMIC)) {
			long cleared;

			FUNC8();
			cleared = FUNC9(&ndns->dev,
					nsio->res.start + offset, size);
			if (cleared < size)
				rc = -EIO;
			if (cleared > 0 && cleared / 512) {
				cleared /= 512;
				FUNC3(&nsio->bb, sector, cleared);
			}
			FUNC2(nsio->addr + offset, size);
		} else
			rc = -EIO;
	}

	FUNC6(nsio->addr + offset, buf, size);
	ret = FUNC10(FUNC12(ndns->dev.parent), NULL);
	if (ret)
		rc = ret;

	return rc;
}