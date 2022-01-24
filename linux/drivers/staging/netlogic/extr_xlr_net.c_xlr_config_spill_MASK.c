#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct xlr_net_priv {int* base_addr; TYPE_1__* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,scalar_t__) ; 
 scalar_t__ SMP_CACHE_BYTES ; 
 void* ZERO_SIZE_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,unsigned long) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static void *FUNC5(struct xlr_net_priv *priv, int reg_start_0,
			      int reg_start_1, int reg_size, int size)
{
	void *spill;
	u32 *base;
	unsigned long phys_addr;
	u32 spill_size;

	base = priv->base_addr;
	spill_size = size;
	spill = FUNC2(spill_size + SMP_CACHE_BYTES, GFP_KERNEL);
	if (!spill)
		return ZERO_SIZE_PTR;

	spill = FUNC0(spill, SMP_CACHE_BYTES);
	phys_addr = FUNC3(spill);
	FUNC1(&priv->ndev->dev, "Allocated spill %d bytes at %lx\n",
		size, phys_addr);
	FUNC4(base, reg_start_0, (phys_addr >> 5) & 0xffffffff);
	FUNC4(base, reg_start_1, ((u64)phys_addr >> 37) & 0x07);
	FUNC4(base, reg_size, spill_size);

	return spill;
}