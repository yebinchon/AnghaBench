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
struct xenbus_device {int dummy; } ;
struct gnttab_unmap_grant_ref {int status; } ;
typedef  int /*<<< orphan*/  grant_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 int GNTST_okay ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,int) ; 
 int XENBUS_MAX_RING_GRANTS ; 
 int /*<<< orphan*/  FUNC2 (struct gnttab_unmap_grant_ref*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct xenbus_device *dev,
		      grant_handle_t *handles, unsigned int nr_handles,
		      unsigned long *vaddrs)
{
	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
	int i;
	int err;

	if (nr_handles > XENBUS_MAX_RING_GRANTS)
		return -EINVAL;

	for (i = 0; i < nr_handles; i++)
		FUNC2(&unmap[i], vaddrs[i],
				    GNTMAP_host_map, handles[i]);

	if (FUNC1(GNTTABOP_unmap_grant_ref, unmap, i))
		FUNC0();

	err = GNTST_okay;
	for (i = 0; i < nr_handles; i++) {
		if (unmap[i].status != GNTST_okay) {
			FUNC3(dev, unmap[i].status,
					 "unmapping page at handle %d error %d",
					 handles[i], unmap[i].status);
			err = unmap[i].status;
			break;
		}
	}

	return err;
}