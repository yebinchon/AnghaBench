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
typedef  int u64 ;
typedef  int u32 ;
typedef  enum qm_memory { ____Placeholder_qm_memory } qm_memory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int PFDR_AR_EN ; 
 int REG_FQD_BARE ; 
 int REG_PFDR_BARE ; 
 int REG_offset_AR ; 
 int REG_offset_BAR ; 
 int __qman_requires_cleanup ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int qm_memory_fqd ; 
 int FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(enum qm_memory memory, u64 ba, u32 size)
{
	void *ptr;
	u32 offset = (memory == qm_memory_fqd) ? REG_FQD_BARE : REG_PFDR_BARE;
	u32 exp = FUNC2(size);
	u32 bar, bare;

	/* choke if size isn't within range */
	FUNC0((size >= 4096) && (size <= 1024*1024*1024) &&
		    FUNC3(size));
	/* choke if 'ba' has lower-alignment than 'size' */
	FUNC0(!(ba & (size - 1)));

	/* Check to see if QMan has already been initialized */
	bar = FUNC10(offset + REG_offset_BAR);
	if (bar) {
		/* Maker sure ba == what was programmed) */
		bare = FUNC10(offset);
		if (bare != FUNC12(ba) || bar != FUNC4(ba)) {
			FUNC9("Attempted to reinitialize QMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\n",
			       ba, bare, bar);
			return -ENOMEM;
		}
		__qman_requires_cleanup = 1;
		/* Return 1 to indicate memory was previously programmed */
		return 1;
	}
	/* Need to temporarily map the area to make sure it is zeroed */
	ptr = FUNC5(ba, size, MEMREMAP_WB);
	if (!ptr) {
		FUNC8("memremap() of QMan private memory failed\n");
		return -ENOMEM;
	}
	FUNC6(ptr, 0, size);

#ifdef CONFIG_PPC
	/*
	 * PPC doesn't appear to flush the cache on memunmap() but the
	 * cache must be flushed since QMan does non coherent accesses
	 * to this memory
	 */
	flush_dcache_range((unsigned long) ptr, (unsigned long) ptr+size);
#endif
	FUNC7(ptr);

	FUNC11(offset, FUNC12(ba));
	FUNC11(offset + REG_offset_BAR, FUNC4(ba));
	FUNC11(offset + REG_offset_AR, PFDR_AR_EN | (exp - 1));
	return 0;
}