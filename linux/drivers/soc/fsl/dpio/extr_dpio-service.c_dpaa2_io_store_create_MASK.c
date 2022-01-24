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
struct dpaa2_io_store {unsigned int max; struct device* dev; scalar_t__ idx; struct dpaa2_io_store* alloced_addr; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; } ;
struct dpaa2_dq {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dpaa2_io_store*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_io_store*) ; 
 struct dpaa2_io_store* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct dpaa2_io_store* FUNC5 (size_t,int /*<<< orphan*/ ) ; 

struct dpaa2_io_store *FUNC6(unsigned int max_frames,
					     struct device *dev)
{
	struct dpaa2_io_store *ret;
	size_t size;

	if (!max_frames || (max_frames > 16))
		return NULL;

	ret = FUNC4(sizeof(*ret), GFP_KERNEL);
	if (!ret)
		return NULL;

	ret->max = max_frames;
	size = max_frames * sizeof(struct dpaa2_dq) + 64;
	ret->alloced_addr = FUNC5(size, GFP_KERNEL);
	if (!ret->alloced_addr) {
		FUNC3(ret);
		return NULL;
	}

	ret->vaddr = FUNC0(ret->alloced_addr, 64);
	ret->paddr = FUNC1(dev, ret->vaddr,
				    sizeof(struct dpaa2_dq) * max_frames,
				    DMA_FROM_DEVICE);
	if (FUNC2(dev, ret->paddr)) {
		FUNC3(ret->alloced_addr);
		FUNC3(ret);
		return NULL;
	}

	ret->idx = 0;
	ret->dev = dev;

	return ret;
}