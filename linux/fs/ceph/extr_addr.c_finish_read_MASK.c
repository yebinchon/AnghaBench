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
typedef  int /*<<< orphan*/  u64 ;
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct ceph_osd_request {int r_result; struct inode* r_inode; } ;
struct ceph_osd_data {scalar_t__ type; struct page** pages; scalar_t__ length; scalar_t__ alignment; } ;
struct TYPE_2__ {int blacklisted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ; 
 int EBLACKLISTED ; 
 int ENOENT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct page*) ; 
 TYPE_1__* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page**) ; 
 struct ceph_osd_data* FUNC9 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct ceph_osd_request *req)
{
	struct inode *inode = req->r_inode;
	struct ceph_osd_data *osd_data;
	int rc = req->r_result <= 0 ? req->r_result : 0;
	int bytes = req->r_result >= 0 ? req->r_result : 0;
	int num_pages;
	int i;

	FUNC6("finish_read %p req %p rc %d bytes %d\n", inode, req, rc, bytes);
	if (rc == -EBLACKLISTED)
		FUNC4(inode)->blacklisted = true;

	/* unlock all pages, zeroing any data we didn't read */
	osd_data = FUNC9(req, 0);
	FUNC0(osd_data->type != CEPH_OSD_DATA_TYPE_PAGES);
	num_pages = FUNC2((u64)osd_data->alignment,
					(u64)osd_data->length);
	for (i = 0; i < num_pages; i++) {
		struct page *page = osd_data->pages[i];

		if (rc < 0 && rc != -ENOENT) {
			FUNC3(inode, page);
			goto unlock;
		}
		if (bytes < (int)PAGE_SIZE) {
			/* zero (remainder of) page */
			int s = bytes < 0 ? 0 : bytes;
			FUNC12(page, s, PAGE_SIZE);
		}
 		FUNC6("finish_read %p uptodate %p idx %lu\n", inode, page,
		     page->index);
		FUNC7(page);
		FUNC1(page);
		FUNC5(inode, page);
unlock:
		FUNC11(page);
		FUNC10(page);
		bytes -= PAGE_SIZE;
	}
	FUNC8(osd_data->pages);
}