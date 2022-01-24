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
struct z_erofs_decompress_req {int pageofs_out; scalar_t__* out; scalar_t__* in; scalar_t__ outputsize; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 unsigned char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6(const struct z_erofs_decompress_req *rq,
				     struct list_head *pagepool)
{
	const unsigned int nrpages_out =
		FUNC1(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
	const unsigned int righthalf = PAGE_SIZE - rq->pageofs_out;
	unsigned char *src, *dst;

	if (nrpages_out > 2) {
		FUNC0(1);
		return -EIO;
	}

	if (rq->out[0] == *rq->in) {
		FUNC0(nrpages_out != 1);
		return 0;
	}

	src = FUNC2(*rq->in);
	if (!rq->out[0]) {
		dst = NULL;
	} else {
		dst = FUNC2(rq->out[0]);
		FUNC4(dst + rq->pageofs_out, src, righthalf);
	}

	if (rq->out[1] == *rq->in) {
		FUNC5(src, src + righthalf, rq->pageofs_out);
	} else if (nrpages_out == 2) {
		if (dst)
			FUNC3(dst);
		FUNC0(!rq->out[1]);
		dst = FUNC2(rq->out[1]);
		FUNC4(dst, src + righthalf, rq->pageofs_out);
	}
	if (dst)
		FUNC3(dst);
	FUNC3(src);
	return 0;
}