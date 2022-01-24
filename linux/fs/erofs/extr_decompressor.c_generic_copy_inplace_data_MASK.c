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
struct z_erofs_decompress_req {unsigned int inputsize; struct page** in; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static void *FUNC5(struct z_erofs_decompress_req *rq,
				       u8 *src, unsigned int pageofs_in)
{
	/*
	 * if in-place decompression is ongoing, those decompressed
	 * pages should be copied in order to avoid being overlapped.
	 */
	struct page **in = rq->in;
	u8 *const tmp = FUNC0(0);
	u8 *tmpp = tmp;
	unsigned int inlen = rq->inputsize - pageofs_in;
	unsigned int count = FUNC4(uint, inlen, PAGE_SIZE - pageofs_in);

	while (tmpp < tmp + inlen) {
		if (!src)
			src = FUNC1(*in);
		FUNC3(tmpp, src + pageofs_in, count);
		FUNC2(src);
		src = NULL;
		tmpp += count;
		pageofs_in = 0;
		count = PAGE_SIZE;
		++in;
	}
	return tmp;
}