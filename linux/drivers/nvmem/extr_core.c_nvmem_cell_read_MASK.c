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
typedef  void u8 ;
struct nvmem_device {int dummy; } ;
struct nvmem_cell {int /*<<< orphan*/  bytes; struct nvmem_device* nvmem; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct nvmem_device*,struct nvmem_cell*,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC4(struct nvmem_cell *cell, size_t *len)
{
	struct nvmem_device *nvmem = cell->nvmem;
	u8 *buf;
	int rc;

	if (!nvmem)
		return FUNC0(-EINVAL);

	buf = FUNC3(cell->bytes, GFP_KERNEL);
	if (!buf)
		return FUNC0(-ENOMEM);

	rc = FUNC1(nvmem, cell, buf, len);
	if (rc) {
		FUNC2(buf);
		return FUNC0(rc);
	}

	return buf;
}