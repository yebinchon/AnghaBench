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
typedef  void* uint64_t ;
struct xencons_info {int /*<<< orphan*/  list; int /*<<< orphan*/  vtermno; int /*<<< orphan*/ * intf; void* evtchn; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HVC_COOKIE ; 
 int /*<<< orphan*/  HVM_PARAM_CONSOLE_EVTCHN ; 
 int /*<<< orphan*/  HVM_PARAM_CONSOLE_PFN ; 
 unsigned long XEN_PAGE_SHIFT ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct xencons_info*) ; 
 struct xencons_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xencons_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xencons_lock ; 
 int /*<<< orphan*/  xenconsoles ; 

__attribute__((used)) static int FUNC9(void)
{
	int r;
	uint64_t v = 0;
	unsigned long gfn;
	struct xencons_info *info;

	if (!FUNC7())
		return -ENODEV;

	info = FUNC6(HVC_COOKIE);
	if (!info) {
		info = FUNC2(sizeof(struct xencons_info), GFP_KERNEL);
		if (!info)
			return -ENOMEM;
	} else if (info->intf != NULL) {
		/* already configured */
		return 0;
	}
	/*
	 * If the toolstack (or the hypervisor) hasn't set these values, the
	 * default value is 0. Even though gfn = 0 and evtchn = 0 are
	 * theoretically correct values, in practice they never are and they
	 * mean that a legacy toolstack hasn't initialized the pv console correctly.
	 */
	r = FUNC0(HVM_PARAM_CONSOLE_EVTCHN, &v);
	if (r < 0 || v == 0)
		goto err;
	info->evtchn = v;
	v = 0;
	r = FUNC0(HVM_PARAM_CONSOLE_PFN, &v);
	if (r < 0 || v == 0)
		goto err;
	gfn = v;
	info->intf = FUNC8(gfn << XEN_PAGE_SHIFT, XEN_PAGE_SIZE);
	if (info->intf == NULL)
		goto err;
	info->vtermno = HVC_COOKIE;

	FUNC4(&xencons_lock);
	FUNC3(&info->list, &xenconsoles);
	FUNC5(&xencons_lock);

	return 0;
err:
	FUNC1(info);
	return -ENODEV;
}