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
struct iov_iter {int dummy; } ;
struct bio_vec {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (struct iov_iter*,size_t,struct bio_vec*) ; 
 size_t FUNC1 (struct iov_iter*) ; 
 int FUNC2 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_vec*) ; 
 struct bio_vec* FUNC6 (int,int,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct iov_iter *iter, size_t maxsize,
				    struct bio_vec **bvecs, int *num_bvecs)
{
	struct bio_vec *bv;
	size_t orig_count = FUNC1(iter);
	ssize_t bytes;
	int npages;

	FUNC4(iter, maxsize);
	npages = FUNC2(iter, INT_MAX);
	FUNC3(iter, orig_count);

	/*
	 * __iter_get_bvecs() may populate only part of the array -- zero it
	 * out.
	 */
	bv = FUNC6(npages, sizeof(*bv), GFP_KERNEL | __GFP_ZERO);
	if (!bv)
		return -ENOMEM;

	bytes = FUNC0(iter, maxsize, bv);
	if (bytes < 0) {
		/*
		 * No pages were pinned -- just free the array.
		 */
		FUNC5(bv);
		return bytes;
	}

	*bvecs = bv;
	*num_bvecs = npages;
	return bytes;
}