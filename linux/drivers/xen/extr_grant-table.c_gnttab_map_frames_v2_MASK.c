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
typedef  int /*<<< orphan*/  xen_pfn_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct gnttab_get_status_frames {unsigned int nr_frames; scalar_t__ status; int /*<<< orphan*/  frame_list; int /*<<< orphan*/  dom; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GNTTABOP_get_status_frames ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gnttab_get_status_frames*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 () ; 
 TYPE_1__ gnttab_shared ; 
 int /*<<< orphan*/  grstatus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(xen_pfn_t *frames, unsigned int nr_gframes)
{
	uint64_t *sframes;
	unsigned int nr_sframes;
	struct gnttab_get_status_frames getframes;
	int rc;

	nr_sframes = FUNC7(nr_gframes);

	/* No need for kzalloc as it is initialized in following hypercall
	 * GNTTABOP_get_status_frames.
	 */
	sframes = FUNC6(nr_sframes, sizeof(uint64_t), GFP_ATOMIC);
	if (!sframes)
		return -ENOMEM;

	getframes.dom        = DOMID_SELF;
	getframes.nr_frames  = nr_sframes;
	FUNC8(getframes.frame_list, sframes);

	rc = FUNC1(GNTTABOP_get_status_frames,
				       &getframes, 1);
	if (rc == -ENOSYS) {
		FUNC5(sframes);
		return -ENOSYS;
	}

	FUNC0(rc || getframes.status);

	rc = FUNC3(sframes, nr_sframes,
				    FUNC7(FUNC4()),
				    &grstatus);
	FUNC0(rc);
	FUNC5(sframes);

	rc = FUNC2(frames, nr_gframes,
				    FUNC4(),
				    &gnttab_shared.addr);
	FUNC0(rc);

	return 0;
}