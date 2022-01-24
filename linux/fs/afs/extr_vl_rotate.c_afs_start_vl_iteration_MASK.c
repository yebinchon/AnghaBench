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
struct afs_vl_cursor {unsigned long untried; int index; TYPE_1__* server_list; int /*<<< orphan*/  error; struct afs_cell* cell; } ;
struct afs_cell {scalar_t__ dns_source; scalar_t__ dns_expiry; int /*<<< orphan*/  vl_servers_lock; int /*<<< orphan*/  vl_servers; int /*<<< orphan*/  dns_lookup_count; int /*<<< orphan*/  manager; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {unsigned long nr_servers; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CELL_FL_DO_LOOKUP ; 
 scalar_t__ DNS_RECORD_UNAVAILABLE ; 
 int /*<<< orphan*/  EDESTADDRREQ ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_wq ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC10(struct afs_vl_cursor *vc)
{
	struct afs_cell *cell = vc->cell;
	unsigned int dns_lookup_count;

	if (cell->dns_source == DNS_RECORD_UNAVAILABLE ||
	    cell->dns_expiry <= FUNC1()) {
		dns_lookup_count = FUNC8(&cell->dns_lookup_count);
		FUNC7(AFS_CELL_FL_DO_LOOKUP, &cell->flags);
		FUNC3(afs_wq, &cell->manager);

		if (cell->dns_source == DNS_RECORD_UNAVAILABLE) {
			if (FUNC9(
				    &cell->dns_lookup_count,
				    FUNC8(&cell->dns_lookup_count)
				    != dns_lookup_count) < 0) {
				vc->error = -ERESTARTSYS;
				return false;
			}
		}

		/* Status load is ordered after lookup counter load */
		if (cell->dns_source == DNS_RECORD_UNAVAILABLE) {
			vc->error = -EDESTADDRREQ;
			return false;
		}
	}

	FUNC5(&cell->vl_servers_lock);
	vc->server_list = FUNC0(
		FUNC4(cell->vl_servers,
					  FUNC2(&cell->vl_servers_lock)));
	FUNC6(&cell->vl_servers_lock);
	if (!vc->server_list->nr_servers)
		return false;

	vc->untried = (1UL << vc->server_list->nr_servers) - 1;
	vc->index = -1;
	return true;
}