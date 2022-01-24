#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xen_pfn_t ;
struct xen_add_to_physmap {unsigned int idx; int /*<<< orphan*/  gpfn; int /*<<< orphan*/  space; void* domid; } ;
struct gnttab_setup_table {unsigned int nr_frames; scalar_t__ status; int /*<<< orphan*/  frame_list; void* dom; } ;
struct TYPE_4__ {int (* map_frames ) (int /*<<< orphan*/ *,unsigned int) ;} ;
struct TYPE_3__ {unsigned int count; int /*<<< orphan*/ * pfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* DOMID_SELF ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GNTTABOP_setup_table ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gnttab_setup_table*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xen_add_to_physmap*) ; 
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 int /*<<< orphan*/  XENMAPSPACE_grant_table ; 
 int /*<<< orphan*/  XENMEM_add_to_physmap ; 
 TYPE_2__* gnttab_interface ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__ xen_auto_xlat_grant_frames ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(unsigned int start_idx, unsigned int end_idx)
{
	struct gnttab_setup_table setup;
	xen_pfn_t *frames;
	unsigned int nr_gframes = end_idx + 1;
	int rc;

	if (FUNC8(XENFEAT_auto_translated_physmap)) {
		struct xen_add_to_physmap xatp;
		unsigned int i = end_idx;
		rc = 0;
		FUNC0(xen_auto_xlat_grant_frames.count < nr_gframes);
		/*
		 * Loop backwards, so that the first hypercall has the largest
		 * index, ensuring that the table will grow only once.
		 */
		do {
			xatp.domid = DOMID_SELF;
			xatp.idx = i;
			xatp.space = XENMAPSPACE_grant_table;
			xatp.gpfn = xen_auto_xlat_grant_frames.pfn[i];
			rc = FUNC2(XENMEM_add_to_physmap, &xatp);
			if (rc != 0) {
				FUNC5("grant table add_to_physmap failed, err=%d\n",
					rc);
				break;
			}
		} while (i-- > start_idx);

		return rc;
	}

	/* No need for kzalloc as it is initialized in following hypercall
	 * GNTTABOP_setup_table.
	 */
	frames = FUNC4(nr_gframes, sizeof(unsigned long), GFP_ATOMIC);
	if (!frames)
		return -ENOMEM;

	setup.dom        = DOMID_SELF;
	setup.nr_frames  = nr_gframes;
	FUNC6(setup.frame_list, frames);

	rc = FUNC1(GNTTABOP_setup_table, &setup, 1);
	if (rc == -ENOSYS) {
		FUNC3(frames);
		return -ENOSYS;
	}

	FUNC0(rc || setup.status);

	rc = gnttab_interface->map_frames(frames, nr_gframes);

	FUNC3(frames);

	return rc;
}