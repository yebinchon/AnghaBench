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
struct z_erofs_map_header {int h_algorithmtype; int h_clusterbits; int /*<<< orphan*/  h_advise; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct erofs_inode {scalar_t__ datalayout; int* z_algorithmtype; int z_logical_clusterbits; int* z_physical_clusterbits; int /*<<< orphan*/  flags; int /*<<< orphan*/  nid; int /*<<< orphan*/  z_advise; scalar_t__ xattr_isize; scalar_t__ inode_isize; } ;
typedef  int /*<<< orphan*/  erofs_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 struct erofs_inode* FUNC2 (struct inode*) ; 
 scalar_t__ EROFS_INODE_FLAT_COMPRESSION_LEGACY ; 
 int /*<<< orphan*/  EROFS_I_BL_Z_BIT ; 
 int /*<<< orphan*/  EROFS_I_Z_INITED_BIT ; 
 int /*<<< orphan*/  FUNC3 (struct super_block* const) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int LOG_BLOCK_SIZE ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int Z_EROFS_COMPRESSION_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block* const,char*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (struct super_block* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct inode *inode)
{
	struct erofs_inode *const vi = FUNC2(inode);
	struct super_block *const sb = inode->i_sb;
	int err;
	erofs_off_t pos;
	struct page *page;
	void *kaddr;
	struct z_erofs_map_header *h;

	if (FUNC17(EROFS_I_Z_INITED_BIT, &vi->flags))
		return 0;

	if (FUNC19(&vi->flags, EROFS_I_BL_Z_BIT, TASK_KILLABLE))
		return -ERESTARTSYS;

	err = 0;
	if (FUNC17(EROFS_I_Z_INITED_BIT, &vi->flags))
		goto out_unlock;

	FUNC1(vi->datalayout == EROFS_INODE_FLAT_COMPRESSION_LEGACY);

	pos = FUNC0(FUNC11(FUNC3(sb), vi->nid) + vi->inode_isize +
		    vi->xattr_isize, 8);
	page = FUNC10(sb, FUNC7(pos));
	if (FUNC4(page)) {
		err = FUNC5(page);
		goto out_unlock;
	}

	kaddr = FUNC12(page);

	h = kaddr + FUNC8(pos);
	vi->z_advise = FUNC14(h->h_advise);
	vi->z_algorithmtype[0] = h->h_algorithmtype & 15;
	vi->z_algorithmtype[1] = h->h_algorithmtype >> 4;

	if (vi->z_algorithmtype[0] >= Z_EROFS_COMPRESSION_MAX) {
		FUNC9(sb, "unknown compression format %u for nid %llu, please upgrade kernel",
			  vi->z_algorithmtype[0], vi->nid);
		err = -EOPNOTSUPP;
		goto unmap_done;
	}

	vi->z_logical_clusterbits = LOG_BLOCK_SIZE + (h->h_clusterbits & 7);
	vi->z_physical_clusterbits[0] = vi->z_logical_clusterbits +
					((h->h_clusterbits >> 3) & 3);

	if (vi->z_physical_clusterbits[0] != LOG_BLOCK_SIZE) {
		FUNC9(sb, "unsupported physical clusterbits %u for nid %llu, please upgrade kernel",
			  vi->z_physical_clusterbits[0], vi->nid);
		err = -EOPNOTSUPP;
		goto unmap_done;
	}

	vi->z_physical_clusterbits[1] = vi->z_logical_clusterbits +
					((h->h_clusterbits >> 5) & 7);
	FUNC16(EROFS_I_Z_INITED_BIT, &vi->flags);
unmap_done:
	FUNC13(kaddr);
	FUNC18(page);
	FUNC15(page);
out_unlock:
	FUNC6(EROFS_I_BL_Z_BIT, &vi->flags);
	return err;
}