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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct page {int /*<<< orphan*/  index; } ;
struct inode {struct super_block* i_sb; } ;
struct erofs_map_blocks {int m_flags; scalar_t__ m_plen; scalar_t__ m_llen; int /*<<< orphan*/  m_pa; int /*<<< orphan*/  m_la; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {int bi_max_vecs; TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; int /*<<< orphan*/  bi_end_io; } ;
struct address_space {struct inode* host; } ;
typedef  int sector_t ;
typedef  scalar_t__ erofs_off_t ;
typedef  scalar_t__ erofs_blk_t ;

/* Variables and functions */
 unsigned int BIO_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (void*,int) ; 
 int /*<<< orphan*/  EROFS_GET_BLOCKS_RAW ; 
 int EROFS_MAP_MAPPED ; 
 int EROFS_MAP_META ; 
 struct bio* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int LOG_SECTORS_PER_BLOCK ; 
 int PAGE_SIZE ; 
 int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct page* FUNC15 (struct super_block*,scalar_t__) ; 
 int FUNC16 (struct inode* const,struct erofs_map_blocks*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  erofs_readendio ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 void* FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct bio*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline struct bio *FUNC26(struct bio *bio,
					      struct address_space *mapping,
					      struct page *page,
					      erofs_off_t *last_block,
					      unsigned int nblocks,
					      bool ra)
{
	struct inode *const inode = mapping->host;
	struct super_block *const sb = inode->i_sb;
	erofs_off_t current_block = (erofs_off_t)page->index;
	int err;

	FUNC1(!nblocks);

	if (FUNC6(page)) {
		err = 0;
		goto has_updated;
	}

	/* note that for readpage case, bio also equals to NULL */
	if (bio &&
	    /* not continuous */
	    *last_block + 1 != current_block) {
submit_bio_retry:
		FUNC23(bio);
		bio = NULL;
	}

	if (!bio) {
		struct erofs_map_blocks map = {
			.m_la = FUNC12(current_block),
		};
		erofs_blk_t blknr;
		unsigned int blkoff;

		err = FUNC16(inode, &map, EROFS_GET_BLOCKS_RAW);
		if (err)
			goto err_out;

		/* zero out the holed page */
		if (!(map.m_flags & EROFS_MAP_MAPPED)) {
			FUNC25(page, 0, PAGE_SIZE);
			FUNC8(page);

			/* imply err = 0, see erofs_map_blocks */
			goto has_updated;
		}

		/* for RAW access mode, m_plen must be equal to m_llen */
		FUNC1(map.m_plen != map.m_llen);

		blknr = FUNC13(map.m_pa);
		blkoff = FUNC14(map.m_pa);

		/* deal with inline page */
		if (map.m_flags & EROFS_MAP_META) {
			void *vsrc, *vto;
			struct page *ipage;

			FUNC1(map.m_plen > PAGE_SIZE);

			ipage = FUNC15(inode->i_sb, blknr);

			if (FUNC4(ipage)) {
				err = FUNC5(ipage);
				goto err_out;
			}

			vsrc = FUNC18(ipage);
			vto = FUNC18(page);
			FUNC20(vto, vsrc + blkoff, map.m_plen);
			FUNC21(vto + map.m_plen, 0, PAGE_SIZE - map.m_plen);
			FUNC19(vto);
			FUNC19(vsrc);
			FUNC17(page);

			FUNC8(page);
			/* TODO: could we unlock the page earlier? */
			FUNC24(ipage);
			FUNC22(ipage);

			/* imply err = 0, see erofs_map_blocks */
			goto has_updated;
		}

		/* pa must be block-aligned for raw reading */
		FUNC1(FUNC14(map.m_pa));

		/* max # of continuous pages */
		if (nblocks > FUNC2(map.m_plen, PAGE_SIZE))
			nblocks = FUNC2(map.m_plen, PAGE_SIZE);
		if (nblocks > BIO_MAX_PAGES)
			nblocks = BIO_MAX_PAGES;

		bio = FUNC10(GFP_NOIO, nblocks);

		bio->bi_end_io = erofs_readendio;
		FUNC11(bio, sb->s_bdev);
		bio->bi_iter.bi_sector = (sector_t)blknr <<
			LOG_SECTORS_PER_BLOCK;
		bio->bi_opf = REQ_OP_READ;
	}

	err = FUNC9(bio, page, PAGE_SIZE, 0);
	/* out of the extent or bio is full */
	if (err < PAGE_SIZE)
		goto submit_bio_retry;

	*last_block = current_block;

	/* shift in advance in case of it followed by too many gaps */
	if (bio->bi_iter.bi_size >= bio->bi_max_vecs * PAGE_SIZE) {
		/* err should reassign to 0 after submitting */
		err = 0;
		goto submit_bio_out;
	}

	return bio;

err_out:
	/* for sync reading, set page error immediately */
	if (!ra) {
		FUNC7(page);
		FUNC0(page);
	}
has_updated:
	FUNC24(page);

	/* if updated manually, continuous pages has a gap */
	if (bio)
submit_bio_out:
		FUNC23(bio);
	return err ? FUNC3(err) : NULL;
}