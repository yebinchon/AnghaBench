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
typedef  int /*<<< orphan*/  unmap ;
struct xenbus_device {int /*<<< orphan*/  otherend_id; } ;
struct gnttab_unmap_grant_ref {int status; scalar_t__ handle; } ;
struct gnttab_map_grant_ref {int status; scalar_t__ handle; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  map ;
typedef  int /*<<< orphan*/  grant_ref_t ;
typedef  scalar_t__ grant_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 int GNTST_okay ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,int) ; 
 scalar_t__ INVALID_GRANT_HANDLE ; 
 int XENBUS_MAX_RING_GRANTS ; 
 int /*<<< orphan*/  FUNC2 (struct gnttab_unmap_grant_ref*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gnttab_unmap_grant_ref*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gnttab_unmap_grant_ref*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct xenbus_device *dev,
			     grant_ref_t *gnt_refs,
			     unsigned int nr_grefs,
			     grant_handle_t *handles,
			     phys_addr_t *addrs,
			     unsigned int flags,
			     bool *leaked)
{
	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
	int i, j;
	int err = GNTST_okay;

	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
		return -EINVAL;

	for (i = 0; i < nr_grefs; i++) {
		FUNC5(&map[i], 0, sizeof(map[i]));
		FUNC3(&map[i], addrs[i], flags, gnt_refs[i],
				  dev->otherend_id);
		handles[i] = INVALID_GRANT_HANDLE;
	}

	FUNC2(map, i);

	for (i = 0; i < nr_grefs; i++) {
		if (map[i].status != GNTST_okay) {
			err = map[i].status;
			FUNC6(dev, map[i].status,
					 "mapping in shared page %d from domain %d",
					 gnt_refs[i], dev->otherend_id);
			goto fail;
		} else
			handles[i] = map[i].handle;
	}

	return GNTST_okay;

 fail:
	for (i = j = 0; i < nr_grefs; i++) {
		if (handles[i] != INVALID_GRANT_HANDLE) {
			FUNC5(&unmap[j], 0, sizeof(unmap[j]));
			FUNC4(&unmap[j], (phys_addr_t)addrs[i],
					    GNTMAP_host_map, handles[i]);
			j++;
		}
	}

	if (FUNC1(GNTTABOP_unmap_grant_ref, unmap, j))
		FUNC0();

	*leaked = false;
	for (i = 0; i < j; i++) {
		if (unmap[i].status != GNTST_okay) {
			*leaked = true;
			break;
		}
	}

	return err;
}