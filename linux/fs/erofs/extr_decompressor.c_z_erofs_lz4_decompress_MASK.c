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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct z_erofs_decompress_req {unsigned int inputsize; scalar_t__* in; unsigned int outputsize; scalar_t__* out; int /*<<< orphan*/  sb; scalar_t__ partial_decoding; int /*<<< orphan*/  pageofs_out; scalar_t__ inplace_io; } ;
struct TYPE_2__ {int feature_incompat; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int EROFS_FEATURE_INCOMPAT_LZ4_0PADDING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int const FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct z_erofs_decompress_req*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int FUNC11(struct z_erofs_decompress_req *rq, u8 *out)
{
	unsigned int inputmargin, inlen;
	u8 *src;
	bool copied, support_0padding;
	int ret;

	if (rq->inputsize > PAGE_SIZE)
		return -EOPNOTSUPP;

	src = FUNC8(*rq->in);
	inputmargin = 0;
	support_0padding = false;

	/* decompression inplace is only safe when 0padding is enabled */
	if (FUNC0(rq->sb)->feature_incompat &
	    EROFS_FEATURE_INCOMPAT_LZ4_0PADDING) {
		support_0padding = true;

		while (!src[inputmargin & ~PAGE_MASK])
			if (!(++inputmargin & ~PAGE_MASK))
				break;

		if (inputmargin >= rq->inputsize) {
			FUNC9(src);
			return -EIO;
		}
	}

	copied = false;
	inlen = rq->inputsize - inputmargin;
	if (rq->inplace_io) {
		const uint oend = (rq->pageofs_out +
				   rq->outputsize) & ~PAGE_MASK;
		const uint nr = FUNC3(rq->pageofs_out +
					   rq->outputsize) >> PAGE_SHIFT;

		if (rq->partial_decoding || !support_0padding ||
		    rq->out[nr - 1] != rq->in[0] ||
		    rq->inputsize - oend <
		      FUNC1(inlen)) {
			src = FUNC7(rq, src, inputmargin);
			inputmargin = 0;
			copied = true;
		}
	}

	ret = FUNC2(src + inputmargin, out,
					  inlen, rq->outputsize,
					  rq->outputsize);
	if (ret < 0) {
		FUNC5(rq->sb, "failed to decompress, in[%u, %u] out[%u]",
			  inlen, inputmargin, rq->outputsize);
		FUNC4(1);
		FUNC10(KERN_DEBUG, "[ in]: ", DUMP_PREFIX_OFFSET,
			       16, 1, src + inputmargin, inlen, true);
		FUNC10(KERN_DEBUG, "[out]: ", DUMP_PREFIX_OFFSET,
			       16, 1, out, rq->outputsize, true);
		ret = -EIO;
	}

	if (copied)
		FUNC6(src);
	else
		FUNC9(src);
	return ret;
}