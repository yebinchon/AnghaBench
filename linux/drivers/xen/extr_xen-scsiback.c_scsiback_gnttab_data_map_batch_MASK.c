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
struct page {int dummy; } ;
struct gnttab_map_grant_ref {scalar_t__ status; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  grant_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ GNTST_okay ; 
 int /*<<< orphan*/  SCSIBACK_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct gnttab_map_grant_ref*,int /*<<< orphan*/ *,struct page**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct gnttab_map_grant_ref *map,
	struct page **pg, grant_handle_t *grant, int cnt)
{
	int err, i;

	if (!cnt)
		return 0;

	err = FUNC2(map, NULL, pg, cnt);
	FUNC0(err);
	for (i = 0; i < cnt; i++) {
		if (FUNC4(map[i].status != GNTST_okay)) {
			FUNC3("invalid buffer -- could not remap it\n");
			map[i].handle = SCSIBACK_INVALID_HANDLE;
			err = -ENOMEM;
		} else {
			FUNC1(pg[i]);
		}
		grant[i] = map[i].handle;
	}
	return err;
}