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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int paddr; int /*<<< orphan*/  vaddr; } ;
struct allegro_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  v4l2_dev; TYPE_1__ firmware; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AL5_DCACHE_ADDR_OFFSET_LSB ; 
 int /*<<< orphan*/  AL5_DCACHE_ADDR_OFFSET_MSB ; 
 int /*<<< orphan*/  AL5_ICACHE_ADDR_OFFSET_LSB ; 
 int /*<<< orphan*/  AL5_ICACHE_ADDR_OFFSET_MSB ; 
 int /*<<< orphan*/  AXI_ADDR_OFFSET_IP ; 
 int MCU_CACHE_OFFSET ; 
 int FUNC0 (struct allegro_dev*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static void FUNC7(struct allegro_dev *dev,
				  const u8 * const buf, size_t size)
{
	int err;
	dma_addr_t icache_offset, dcache_offset;

	/*
	 * The downstream allocates 600 KB for the codec firmware to have some
	 * extra space for "possible extensions." My tests were fine with
	 * allocating just enough memory for the actual firmware, but I am not
	 * sure that the firmware really does not use the remaining space.
	 */
	err = FUNC0(dev, &dev->firmware, size);
	if (err) {
		FUNC6(&dev->v4l2_dev,
			 "failed to allocate %zu bytes for firmware\n", size);
		return;
	}

	FUNC5(1, debug, &dev->v4l2_dev,
		 "copy codec firmware (%zd B) to phys %pad\n",
		 size, &dev->firmware.paddr);
	FUNC2(dev->firmware.vaddr, buf, size);

	FUNC3(dev->regmap, AXI_ADDR_OFFSET_IP,
		     FUNC4(dev->firmware.paddr));

	icache_offset = dev->firmware.paddr - MCU_CACHE_OFFSET;
	FUNC5(2, debug, &dev->v4l2_dev,
		 "icache_offset: msb = 0x%x, lsb = 0x%x\n",
		 FUNC4(icache_offset), FUNC1(icache_offset));
	FUNC3(dev->regmap, AL5_ICACHE_ADDR_OFFSET_MSB,
		     FUNC4(icache_offset));
	FUNC3(dev->regmap, AL5_ICACHE_ADDR_OFFSET_LSB,
		     FUNC1(icache_offset));

	dcache_offset =
	    (dev->firmware.paddr & 0xffffffff00000000ULL) - MCU_CACHE_OFFSET;
	FUNC5(2, debug, &dev->v4l2_dev,
		 "dcache_offset: msb = 0x%x, lsb = 0x%x\n",
		 FUNC4(dcache_offset), FUNC1(dcache_offset));
	FUNC3(dev->regmap, AL5_DCACHE_ADDR_OFFSET_MSB,
		     FUNC4(dcache_offset));
	FUNC3(dev->regmap, AL5_DCACHE_ADDR_OFFSET_LSB,
		     FUNC1(dcache_offset));
}