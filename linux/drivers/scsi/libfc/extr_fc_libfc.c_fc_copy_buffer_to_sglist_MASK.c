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
typedef  size_t u32 ;
struct scatterlist {size_t length; size_t offset; } ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 size_t FUNC0 (size_t,void*,size_t) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t) ; 
 size_t FUNC4 (size_t,size_t) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 scalar_t__ FUNC6 (struct scatterlist*) ; 

u32 FUNC7(void *buf, size_t len,
			     struct scatterlist *sg,
			     u32 *nents, size_t *offset,
			     u32 *crc)
{
	size_t remaining = len;
	u32 copy_len = 0;

	while (remaining > 0 && sg) {
		size_t off, sg_bytes;
		void *page_addr;

		if (*offset >= sg->length) {
			/*
			 * Check for end and drop resources
			 * from the last iteration.
			 */
			if (!(*nents))
				break;
			--(*nents);
			*offset -= sg->length;
			sg = FUNC5(sg);
			continue;
		}
		sg_bytes = FUNC4(remaining, sg->length - *offset);

		/*
		 * The scatterlist item may be bigger than PAGE_SIZE,
		 * but we are limited to mapping PAGE_SIZE at a time.
		 */
		off = *offset + sg->offset;
		sg_bytes = FUNC4(sg_bytes,
			       (size_t)(PAGE_SIZE - (off & ~PAGE_MASK)));
		page_addr = FUNC1(FUNC6(sg) + (off >> PAGE_SHIFT));
		if (crc)
			*crc = FUNC0(*crc, buf, sg_bytes);
		FUNC3((char *)page_addr + (off & ~PAGE_MASK), buf, sg_bytes);
		FUNC2(page_addr);
		buf += sg_bytes;
		*offset += sg_bytes;
		remaining -= sg_bytes;
		copy_len += sg_bytes;
	}
	return copy_len;
}