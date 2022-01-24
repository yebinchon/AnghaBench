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
typedef  union afs_xdr_dir_block {int dummy; } afs_xdr_dir_block ;
struct afs_xdr_dir_page {union afs_xdr_dir_block* blocks; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_read {unsigned int nr_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  offset; int /*<<< orphan*/  index; int /*<<< orphan*/  pos; int /*<<< orphan*/  remain; int /*<<< orphan*/  actual_len; int /*<<< orphan*/  len; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_xdr_dir_page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,union afs_xdr_dir_block*,...) ; 

__attribute__((used)) static bool FUNC4(struct afs_vnode *dvnode, struct afs_read *req)
{
	struct afs_xdr_dir_page *dbuf;
	unsigned int i, j, qty = PAGE_SIZE / sizeof(union afs_xdr_dir_block);

	for (i = 0; i < req->nr_pages; i++)
		if (!FUNC0(dvnode, req->pages[i], req->actual_len))
			goto bad;
	return true;

bad:
	FUNC3("DIR %llx:%llx f=%llx l=%llx al=%llx r=%llx\n",
		dvnode->fid.vid, dvnode->fid.vnode,
		req->file_size, req->len, req->actual_len, req->remain);
	FUNC3("DIR %llx %x %x %x\n",
		req->pos, req->index, req->nr_pages, req->offset);

	for (i = 0; i < req->nr_pages; i++) {
		dbuf = FUNC1(req->pages[i]);
		for (j = 0; j < qty; j++) {
			union afs_xdr_dir_block *block = &dbuf->blocks[j];

			FUNC3("[%02x] %32phN\n", i * qty + j, block);
		}
		FUNC2(req->pages[i]);
	}
	return false;
}