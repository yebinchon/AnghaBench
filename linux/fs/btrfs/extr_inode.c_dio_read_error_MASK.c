#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct io_failure_record {int /*<<< orphan*/  this_mirror; int /*<<< orphan*/  in_validation; } ;
struct inode {TYPE_1__* i_sb; } ;
struct extent_io_tree {int dummy; } ;
struct bio_vec {scalar_t__ bv_len; } ;
struct bio {unsigned int bi_opf; } ;
typedef  scalar_t__ blk_status_t ;
typedef  int /*<<< orphan*/  bio_end_io_t ;
struct TYPE_8__ {TYPE_2__* root; struct extent_io_tree io_failure_tree; struct extent_io_tree io_tree; } ;
struct TYPE_7__ {int logical; } ;
struct TYPE_6__ {int /*<<< orphan*/  fs_info; } ;
struct TYPE_5__ {int s_blocksize_bits; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int REQ_FAILFAST_DEV ; 
 unsigned int REQ_OP_READ ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio_vec*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int FUNC5 (struct bio*) ; 
 int FUNC6 (struct inode*,struct bio*,struct io_failure_record*,int) ; 
 struct bio* FUNC7 (struct inode*,struct bio*,struct io_failure_record*,struct page*,unsigned int,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int,int,struct io_failure_record**) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 TYPE_3__* FUNC11 (struct bio*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_io_tree*,struct extent_io_tree*,struct io_failure_record*) ; 
 scalar_t__ FUNC14 (struct inode*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC15(struct inode *inode, struct bio *failed_bio,
				   struct page *page, unsigned int pgoff,
				   u64 start, u64 end, int failed_mirror,
				   bio_end_io_t *repair_endio, void *repair_arg)
{
	struct io_failure_record *failrec;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct extent_io_tree *failure_tree = &FUNC0(inode)->io_failure_tree;
	struct bio *bio;
	int isector;
	unsigned int read_mode = 0;
	int segs;
	int ret;
	blk_status_t status;
	struct bio_vec bvec;

	FUNC1(FUNC3(failed_bio) == REQ_OP_WRITE);

	ret = FUNC9(inode, start, end, &failrec);
	if (ret)
		return FUNC12(ret);

	ret = FUNC6(inode, failed_bio, failrec,
					 failed_mirror);
	if (!ret) {
		FUNC13(failure_tree, io_tree, failrec);
		return BLK_STS_IOERR;
	}

	segs = FUNC5(failed_bio);
	FUNC2(failed_bio, &bvec);
	if (segs > 1 ||
	    (bvec.bv_len > FUNC10(inode)))
		read_mode |= REQ_FAILFAST_DEV;

	isector = start - FUNC11(failed_bio)->logical;
	isector >>= inode->i_sb->s_blocksize_bits;
	bio = FUNC7(inode, failed_bio, failrec, page,
				pgoff, isector, repair_endio, repair_arg);
	bio->bi_opf = REQ_OP_READ | read_mode;

	FUNC8(FUNC0(inode)->root->fs_info,
		    "repair DIO read error: submitting new dio read[%#x] to this_mirror=%d, in_validation=%d",
		    read_mode, failrec->this_mirror, failrec->in_validation);

	status = FUNC14(inode, bio, failrec->this_mirror);
	if (status) {
		FUNC13(failure_tree, io_tree, failrec);
		FUNC4(bio);
	}

	return status;
}