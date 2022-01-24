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
struct z_erofs_pcluster {int /*<<< orphan*/ ** compressed_pages; } ;
struct z_erofs_collection {scalar_t__ vcnt; scalar_t__ nr_pages; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int Z_EROFS_CLUSTER_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct z_erofs_collection* FUNC1 (struct z_erofs_pcluster*) ; 

__attribute__((used)) static void FUNC2(void *ptr)
{
	struct z_erofs_pcluster *pcl = ptr;
	struct z_erofs_collection *cl = FUNC1(pcl);
	unsigned int i;

	FUNC0(&cl->lock);
	cl->nr_pages = 0;
	cl->vcnt = 0;
	for (i = 0; i < Z_EROFS_CLUSTER_MAX_PAGES; ++i)
		pcl->compressed_pages[i] = NULL;
}