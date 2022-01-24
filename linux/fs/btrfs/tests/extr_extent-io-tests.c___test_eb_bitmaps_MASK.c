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
typedef  unsigned int u32 ;
struct extent_buffer {int dummy; } ;

/* Variables and functions */
 unsigned long BITS_PER_BYTE ; 
 int EINVAL ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long,int) ; 
 int FUNC2 (unsigned long*,struct extent_buffer*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC5 (struct extent_buffer*,unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(unsigned long *bitmap, struct extent_buffer *eb,
			     unsigned long len)
{
	unsigned long i, j;
	u32 x;
	int ret;

	FUNC6(bitmap, 0, len);
	FUNC7(eb, 0, len);
	if (FUNC5(eb, bitmap, 0, len) != 0) {
		FUNC8("bitmap was not zeroed");
		return -EINVAL;
	}

	FUNC1(bitmap, 0, len * BITS_PER_BYTE);
	FUNC4(eb, 0, 0, len * BITS_PER_BYTE);
	ret = FUNC2(bitmap, eb, len);
	if (ret) {
		FUNC8("setting all bits failed");
		return ret;
	}

	FUNC0(bitmap, 0, len * BITS_PER_BYTE);
	FUNC3(eb, 0, 0, len * BITS_PER_BYTE);
	ret = FUNC2(bitmap, eb, len);
	if (ret) {
		FUNC8("clearing all bits failed");
		return ret;
	}

	/* Straddling pages test */
	if (len > PAGE_SIZE) {
		FUNC1(bitmap,
			(PAGE_SIZE - sizeof(long) / 2) * BITS_PER_BYTE,
			sizeof(long) * BITS_PER_BYTE);
		FUNC4(eb, PAGE_SIZE - sizeof(long) / 2, 0,
					sizeof(long) * BITS_PER_BYTE);
		ret = FUNC2(bitmap, eb, len);
		if (ret) {
			FUNC8("setting straddling pages failed");
			return ret;
		}

		FUNC1(bitmap, 0, len * BITS_PER_BYTE);
		FUNC0(bitmap,
			(PAGE_SIZE - sizeof(long) / 2) * BITS_PER_BYTE,
			sizeof(long) * BITS_PER_BYTE);
		FUNC4(eb, 0, 0, len * BITS_PER_BYTE);
		FUNC3(eb, PAGE_SIZE - sizeof(long) / 2, 0,
					sizeof(long) * BITS_PER_BYTE);
		ret = FUNC2(bitmap, eb, len);
		if (ret) {
			FUNC8("clearing straddling pages failed");
			return ret;
		}
	}

	/*
	 * Generate a wonky pseudo-random bit pattern for the sake of not using
	 * something repetitive that could miss some hypothetical off-by-n bug.
	 */
	x = 0;
	FUNC0(bitmap, 0, len * BITS_PER_BYTE);
	FUNC3(eb, 0, 0, len * BITS_PER_BYTE);
	for (i = 0; i < len * BITS_PER_BYTE / 32; i++) {
		x = (0x19660dULL * (u64)x + 0x3c6ef35fULL) & 0xffffffffU;
		for (j = 0; j < 32; j++) {
			if (x & (1U << j)) {
				FUNC1(bitmap, i * 32 + j, 1);
				FUNC4(eb, 0, i * 32 + j, 1);
			}
		}
	}

	ret = FUNC2(bitmap, eb, len);
	if (ret) {
		FUNC8("random bit pattern failed");
		return ret;
	}

	return 0;
}