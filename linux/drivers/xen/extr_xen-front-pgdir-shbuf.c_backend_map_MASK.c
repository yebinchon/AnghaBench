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
struct xen_page_directory {int /*<<< orphan*/ * gref; } ;
struct xen_front_pgdir_shbuf {int num_pages; unsigned char* directory; int num_grefs; TYPE_1__* xb_dev; int /*<<< orphan*/ * backend_map_handles; int /*<<< orphan*/ * pages; } ;
struct gnttab_map_grant_ref {scalar_t__ status; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 scalar_t__ GNTST_okay ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int XEN_NUM_GREFS_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct xen_front_pgdir_shbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (struct gnttab_map_grant_ref*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gnttab_map_grant_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gnttab_map_grant_ref*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct xen_front_pgdir_shbuf *buf)
{
	struct gnttab_map_grant_ref *map_ops = NULL;
	unsigned char *ptr;
	int ret, cur_gref, cur_dir_page, cur_page, grefs_left;

	map_ops = FUNC4(buf->num_pages, sizeof(*map_ops), GFP_KERNEL);
	if (!map_ops)
		return -ENOMEM;

	buf->backend_map_handles = FUNC4(buf->num_pages,
					   sizeof(*buf->backend_map_handles),
					   GFP_KERNEL);
	if (!buf->backend_map_handles) {
		FUNC5(map_ops);
		return -ENOMEM;
	}

	/*
	 * Read page directory to get grefs from the backend: for external
	 * buffer we only allocate buf->grefs for the page directory,
	 * so buf->num_grefs has number of pages in the page directory itself.
	 */
	ptr = buf->directory;
	grefs_left = buf->num_pages;
	cur_page = 0;
	for (cur_dir_page = 0; cur_dir_page < buf->num_grefs; cur_dir_page++) {
		struct xen_page_directory *page_dir =
			(struct xen_page_directory *)ptr;
		int to_copy = XEN_NUM_GREFS_PER_PAGE;

		if (to_copy > grefs_left)
			to_copy = grefs_left;

		for (cur_gref = 0; cur_gref < to_copy; cur_gref++) {
			phys_addr_t addr;

			addr = FUNC7(buf->pages[cur_page]);
			FUNC3(&map_ops[cur_page], addr,
					  GNTMAP_host_map,
					  page_dir->gref[cur_gref],
					  buf->xb_dev->otherend_id);
			cur_page++;
		}

		grefs_left -= to_copy;
		ptr += PAGE_SIZE;
	}
	ret = FUNC2(map_ops, NULL, buf->pages, buf->num_pages);

	/* Save handles even if error, so we can unmap. */
	for (cur_page = 0; cur_page < buf->num_pages; cur_page++) {
		buf->backend_map_handles[cur_page] = map_ops[cur_page].handle;
		if (FUNC6(map_ops[cur_page].status != GNTST_okay))
			FUNC1(&buf->xb_dev->dev,
				"Failed to map page %d: %d\n",
				cur_page, map_ops[cur_page].status);
	}

	if (ret) {
		FUNC1(&buf->xb_dev->dev,
			"Failed to map grant references, ret %d", ret);
		FUNC0(buf);
	}

	FUNC5(map_ops);
	return ret;
}