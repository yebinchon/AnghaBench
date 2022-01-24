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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct page {int dummy; } ;
struct nd_namespace_blk {int dummy; } ;
struct nd_blk_region {int (* do_io ) (struct nd_blk_region*,scalar_t__,void*,unsigned int,int) ;} ;
struct bio_integrity_payload {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ SECTOR_SHIFT ; 
 scalar_t__ SIZE_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned int FUNC3 (unsigned int,scalar_t__) ; 
 int FUNC4 (struct nd_namespace_blk*,struct bio_integrity_payload*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct nd_namespace_blk*) ; 
 scalar_t__ FUNC6 (struct nd_namespace_blk*) ; 
 int FUNC7 (struct nd_blk_region*,scalar_t__,void*,unsigned int,int) ; 
 scalar_t__ FUNC8 (struct nd_namespace_blk*,scalar_t__,unsigned int) ; 
 struct nd_blk_region* FUNC9 (struct nd_namespace_blk*) ; 

__attribute__((used)) static int FUNC10(struct nd_namespace_blk *nsblk,
		struct bio_integrity_payload *bip, struct page *page,
		unsigned int len, unsigned int off, int rw, sector_t sector)
{
	struct nd_blk_region *ndbr = FUNC9(nsblk);
	resource_size_t	dev_offset, ns_offset;
	u32 internal_lbasize, sector_size;
	int err = 0;
	void *iobuf;
	u64 lba;

	internal_lbasize = FUNC5(nsblk);
	sector_size = FUNC6(nsblk);
	while (len) {
		unsigned int cur_len;

		/*
		 * If we don't have an integrity payload, we don't have to
		 * split the bvec into sectors, as this would cause unnecessary
		 * Block Window setup/move steps. the do_io routine is capable
		 * of handling len <= PAGE_SIZE.
		 */
		cur_len = bip ? FUNC3(len, sector_size) : len;

		lba = FUNC0(sector << SECTOR_SHIFT, sector_size);
		ns_offset = lba * internal_lbasize;
		dev_offset = FUNC8(nsblk, ns_offset, cur_len);
		if (dev_offset == SIZE_MAX)
			return -EIO;

		iobuf = FUNC1(page);
		err = ndbr->do_io(ndbr, dev_offset, iobuf + off, cur_len, rw);
		FUNC2(iobuf);
		if (err)
			return err;

		if (bip) {
			err = FUNC4(nsblk, bip, lba, rw);
			if (err)
				return err;
		}
		len -= cur_len;
		off += cur_len;
		sector += sector_size >> SECTOR_SHIFT;
	}

	return err;
}