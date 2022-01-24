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
struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 unsigned long BITS_PER_BYTE ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,unsigned long,unsigned long,unsigned long*,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 

void FUNC6(struct extent_buffer *eb, unsigned long start,
			      unsigned long pos, unsigned long len)
{
	u8 *kaddr;
	struct page *page;
	unsigned long i;
	size_t offset;
	const unsigned int size = pos + len;
	int bits_to_set = BITS_PER_BYTE - (pos % BITS_PER_BYTE);
	u8 mask_to_set = FUNC0(pos);

	FUNC4(eb, start, pos, &i, &offset);
	page = eb->pages[i];
	FUNC3(!FUNC2(page));
	kaddr = FUNC5(page);

	while (len >= bits_to_set) {
		kaddr[offset] |= mask_to_set;
		len -= bits_to_set;
		bits_to_set = BITS_PER_BYTE;
		mask_to_set = ~0;
		if (++offset >= PAGE_SIZE && len > 0) {
			offset = 0;
			page = eb->pages[++i];
			FUNC3(!FUNC2(page));
			kaddr = FUNC5(page);
		}
	}
	if (len) {
		mask_to_set &= FUNC1(size);
		kaddr[offset] |= mask_to_set;
	}
}