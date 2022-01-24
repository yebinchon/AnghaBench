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
struct z_erofs_decompressor {int (* decompress ) (struct z_erofs_decompress_req*,void*) ;int (* prepare_destpages ) (struct z_erofs_decompress_req*,struct list_head*) ;} ;
struct z_erofs_decompress_req {int pageofs_out; int outputsize; int inplace_io; int /*<<< orphan*/ * out; int /*<<< orphan*/  alg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (void*) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int,int) ; 
 struct z_erofs_decompressor* decompressors ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct z_erofs_decompress_req*,void*) ; 
 int FUNC11 (struct z_erofs_decompress_req*,struct list_head*) ; 
 int FUNC12 (struct z_erofs_decompress_req*,void*) ; 
 void* FUNC13 (int /*<<< orphan*/ *,unsigned int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (void*,unsigned int const) ; 

__attribute__((used)) static int FUNC16(struct z_erofs_decompress_req *rq,
				      struct list_head *pagepool)
{
	const unsigned int nrpages_out =
		FUNC2(rq->pageofs_out + rq->outputsize) >> PAGE_SHIFT;
	const struct z_erofs_decompressor *alg = decompressors + rq->alg;
	unsigned int dst_maptype;
	void *dst;
	int ret, i;

	if (nrpages_out == 1 && !rq->inplace_io) {
		FUNC0(!*rq->out);
		dst = FUNC7(*rq->out);
		dst_maptype = 0;
		goto dstmap_out;
	}

	/*
	 * For the case of small output size (especially much less
	 * than PAGE_SIZE), memcpy the decompressed data rather than
	 * compressed data is preferred.
	 */
	if (rq->outputsize <= PAGE_SIZE * 7 / 8) {
		dst = FUNC5(0);
		if (FUNC1(dst))
			return FUNC3(dst);

		rq->inplace_io = false;
		ret = alg->decompress(rq, dst);
		if (!ret)
			FUNC4(rq->out, dst, rq->pageofs_out,
					  rq->outputsize);

		FUNC6(dst);
		return ret;
	}

	ret = alg->prepare_destpages(rq, pagepool);
	if (ret < 0) {
		return ret;
	} else if (ret) {
		dst = FUNC9(*rq->out);
		dst_maptype = 1;
		goto dstmap_out;
	}

	i = 0;
	while (1) {
		dst = FUNC13(rq->out, nrpages_out, -1, PAGE_KERNEL);

		/* retry two more times (totally 3 times) */
		if (dst || ++i >= 3)
			break;
		FUNC14();
	}

	if (!dst)
		return -ENOMEM;

	dst_maptype = 2;

dstmap_out:
	ret = alg->decompress(rq, dst + rq->pageofs_out);

	if (!dst_maptype)
		FUNC8(dst);
	else if (dst_maptype == 2)
		FUNC15(dst, nrpages_out);
	return ret;
}