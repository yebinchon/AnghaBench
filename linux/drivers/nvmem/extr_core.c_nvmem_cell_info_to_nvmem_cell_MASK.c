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
struct nvmem_device {int /*<<< orphan*/  stride; int /*<<< orphan*/  dev; } ;
struct nvmem_cell_info {scalar_t__ nbits; scalar_t__ bit_offset; int /*<<< orphan*/  name; int /*<<< orphan*/  bytes; int /*<<< orphan*/  offset; } ;
struct nvmem_cell {int /*<<< orphan*/  name; int /*<<< orphan*/  offset; scalar_t__ bit_offset; scalar_t__ nbits; int /*<<< orphan*/  bytes; struct nvmem_device* nvmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nvmem_device *nvmem,
				   const struct nvmem_cell_info *info,
				   struct nvmem_cell *cell)
{
	cell->nvmem = nvmem;
	cell->offset = info->offset;
	cell->bytes = info->bytes;
	cell->name = info->name;

	cell->bit_offset = info->bit_offset;
	cell->nbits = info->nbits;

	if (cell->nbits)
		cell->bytes = FUNC0(cell->nbits + cell->bit_offset,
					   BITS_PER_BYTE);

	if (!FUNC1(cell->offset, nvmem->stride)) {
		FUNC2(&nvmem->dev,
			"cell %s unaligned to nvmem stride %d\n",
			cell->name, nvmem->stride);
		return -EINVAL;
	}

	return 0;
}