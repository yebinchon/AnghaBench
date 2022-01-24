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
struct z_erofs_collector {int cl; scalar_t__ owned_head; scalar_t__ mode; int /*<<< orphan*/  compressedpages; TYPE_1__* pcl; int /*<<< orphan*/  vector; } ;
struct z_erofs_collection {int /*<<< orphan*/  vcnt; int /*<<< orphan*/  pagevec; } ;
struct inode {int dummy; } ;
struct erofs_map_blocks {int /*<<< orphan*/  m_pa; } ;
struct TYPE_2__ {int /*<<< orphan*/  compressed_pages; } ;

/* Variables and functions */
 scalar_t__ COLLECT_PRIMARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int EINVAL ; 
 struct z_erofs_collection* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct z_erofs_collection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct z_erofs_collection*) ; 
 scalar_t__ Z_EROFS_CLUSTER_MAX_PAGES ; 
 int /*<<< orphan*/  Z_EROFS_NR_INLINE_PAGEVECS ; 
 scalar_t__ Z_EROFS_PCLUSTER_NIL ; 
 scalar_t__ Z_EROFS_PCLUSTER_TAIL_CLOSED ; 
 struct z_erofs_collection* FUNC5 (struct z_erofs_collector*,struct inode*,struct erofs_map_blocks*) ; 
 struct z_erofs_collection* FUNC6 (struct z_erofs_collector*,struct inode*,struct erofs_map_blocks*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct z_erofs_collector *clt,
				   struct inode *inode,
				   struct erofs_map_blocks *map)
{
	struct z_erofs_collection *cl;

	FUNC0(clt->cl);

	/* must be Z_EROFS_PCLUSTER_TAIL or pointed to previous collection */
	FUNC0(clt->owned_head == Z_EROFS_PCLUSTER_NIL);
	FUNC0(clt->owned_head == Z_EROFS_PCLUSTER_TAIL_CLOSED);

	if (!FUNC3(map->m_pa)) {
		FUNC0(1);
		return -EINVAL;
	}

repeat:
	cl = FUNC5(clt, inode, map);
	if (!cl) {
		cl = FUNC6(clt, inode, map);

		if (cl == FUNC1(-EAGAIN))
			goto repeat;
	}

	if (FUNC2(cl))
		return FUNC4(cl);

	FUNC7(&clt->vector, Z_EROFS_NR_INLINE_PAGEVECS,
				  cl->pagevec, cl->vcnt);

	clt->compressedpages = clt->pcl->compressed_pages;
	if (clt->mode <= COLLECT_PRIMARY) /* cannot do in-place I/O */
		clt->compressedpages += Z_EROFS_CLUSTER_MAX_PAGES;
	return 0;
}