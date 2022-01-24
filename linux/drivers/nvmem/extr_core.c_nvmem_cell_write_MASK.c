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
struct nvmem_device {scalar_t__ read_only; } ;
struct nvmem_cell {scalar_t__ bit_offset; size_t bytes; scalar_t__ nbits; int /*<<< orphan*/  offset; struct nvmem_device* nvmem; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (struct nvmem_cell*,void*,size_t) ; 
 int FUNC4 (struct nvmem_device*,int /*<<< orphan*/ ,void*,size_t) ; 

int FUNC5(struct nvmem_cell *cell, void *buf, size_t len)
{
	struct nvmem_device *nvmem = cell->nvmem;
	int rc;

	if (!nvmem || nvmem->read_only ||
	    (cell->bit_offset == 0 && len != cell->bytes))
		return -EINVAL;

	if (cell->bit_offset || cell->nbits) {
		buf = FUNC3(cell, buf, len);
		if (FUNC0(buf))
			return FUNC1(buf);
	}

	rc = FUNC4(nvmem, cell->offset, buf, cell->bytes);

	/* free the tmp buffer */
	if (cell->bit_offset || cell->nbits)
		FUNC2(buf);

	if (rc)
		return rc;

	return len;
}