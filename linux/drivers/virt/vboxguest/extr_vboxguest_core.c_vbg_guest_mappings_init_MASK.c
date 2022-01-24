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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rc; int /*<<< orphan*/  request_type; } ;
struct vmmdev_hypervisorinfo {unsigned long hypervisor_start; scalar_t__ hypervisor_size; TYPE_1__ header; } ;
struct vbg_dev {struct page* guest_mappings_dummy_page; void* guest_mappings; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GUEST_MAPPINGS_TRIES ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_KERNEL_RO ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (void*,int) ; 
 int SZ_4M ; 
 int /*<<< orphan*/  VBG_KERNEL_REQUEST ; 
 int /*<<< orphan*/  VERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  VMMDEVREQ_GET_HYPERVISOR_INFO ; 
 int /*<<< orphan*/  VMMDEVREQ_SET_HYPERVISOR_INFO ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 
 struct page** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct vmmdev_hypervisorinfo* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmmdev_hypervisorinfo*,int) ; 
 int FUNC8 (struct vbg_dev*,struct vmmdev_hypervisorinfo*) ; 
 void* FUNC9 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static void FUNC11(struct vbg_dev *gdev)
{
	struct vmmdev_hypervisorinfo *req;
	void *guest_mappings[GUEST_MAPPINGS_TRIES];
	struct page **pages = NULL;
	u32 size, hypervisor_size;
	int i, rc;

	/* Query the required space. */
	req = FUNC6(sizeof(*req), VMMDEVREQ_GET_HYPERVISOR_INFO,
			    VBG_KERNEL_REQUEST);
	if (!req)
		return;

	req->hypervisor_start = 0;
	req->hypervisor_size = 0;
	rc = FUNC8(gdev, req);
	if (rc < 0)
		goto out;

	/*
	 * The VMM will report back if there is nothing it wants to map, like
	 * for instance in VT-x and AMD-V mode.
	 */
	if (req->hypervisor_size == 0)
		goto out;

	hypervisor_size = req->hypervisor_size;
	/* Add 4M so that we can align the vmap to 4MiB as the host requires. */
	size = FUNC0(req->hypervisor_size) + SZ_4M;

	pages = FUNC5(size >> PAGE_SHIFT, sizeof(*pages), GFP_KERNEL);
	if (!pages)
		goto out;

	gdev->guest_mappings_dummy_page = FUNC3(GFP_HIGHUSER);
	if (!gdev->guest_mappings_dummy_page)
		goto out;

	for (i = 0; i < (size >> PAGE_SHIFT); i++)
		pages[i] = gdev->guest_mappings_dummy_page;

	/*
	 * Try several times, the VMM might not accept some addresses because
	 * of address clashes between the three contexts.
	 */
	for (i = 0; i < GUEST_MAPPINGS_TRIES; i++) {
		guest_mappings[i] = FUNC9(pages, (size >> PAGE_SHIFT),
					 VM_MAP, PAGE_KERNEL_RO);
		if (!guest_mappings[i])
			break;

		req->header.request_type = VMMDEVREQ_SET_HYPERVISOR_INFO;
		req->header.rc = VERR_INTERNAL_ERROR;
		req->hypervisor_size = hypervisor_size;
		req->hypervisor_start =
			(unsigned long)FUNC1(guest_mappings[i], SZ_4M);

		rc = FUNC8(gdev, req);
		if (rc >= 0) {
			gdev->guest_mappings = guest_mappings[i];
			break;
		}
	}

	/* Free vmap's from failed attempts. */
	while (--i >= 0)
		FUNC10(guest_mappings[i]);

	/* On failure free the dummy-page backing the vmap */
	if (!gdev->guest_mappings) {
		FUNC2(gdev->guest_mappings_dummy_page);
		gdev->guest_mappings_dummy_page = NULL;
	}

out:
	FUNC7(req, sizeof(*req));
	FUNC4(pages);
}