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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct amvdec_core {struct device* dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SEARCH_PATTERN_LEN ; 
 void* FUNC0 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*,scalar_t__) ; 

int FUNC4(struct amvdec_core *core, const u8 *data, u32 len)
{
	struct device *dev = core->dev;
	void *eos_vaddr;
	dma_addr_t eos_paddr;
	int ret;

	eos_vaddr = FUNC0(dev, len + SEARCH_PATTERN_LEN,
				       &eos_paddr, GFP_KERNEL);
	if (!eos_vaddr)
		return -ENOMEM;

	FUNC3(eos_vaddr, data, len);
	ret = FUNC2(core, eos_paddr, len);
	FUNC1(dev, len + SEARCH_PATTERN_LEN,
			  eos_vaddr, eos_paddr);

	return ret;
}