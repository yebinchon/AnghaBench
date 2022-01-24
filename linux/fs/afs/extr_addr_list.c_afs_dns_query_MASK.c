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
typedef  scalar_t__ time64_t ;
struct afs_vlserver_list {int dummy; } ;
struct afs_cell {TYPE_1__* net; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VL_PORT ; 
 int ENOMEM ; 
 struct afs_vlserver_list* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct afs_vlserver_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_vlserver_list*) ; 
 int /*<<< orphan*/  VL_SERVICE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct afs_vlserver_list* FUNC5 (struct afs_cell*,char*,int) ; 
 struct afs_vlserver_list* FUNC6 (TYPE_1__*,char*,int,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char**,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

struct afs_vlserver_list *FUNC11(struct afs_cell *cell, time64_t *_expiry)
{
	struct afs_vlserver_list *vllist;
	char *result = NULL;
	int ret;

	FUNC3("%s", cell->name);

	ret = FUNC7(cell->net->net, "afsdb", cell->name, cell->name_len,
			"srv=1", &result, _expiry, true);
	if (ret < 0) {
		FUNC4(" = %d [dns]", ret);
		return FUNC0(ret);
	}

	if (*_expiry == 0)
		*_expiry = FUNC9() + 60;

	if (ret > 1 && result[0] == 0)
		vllist = FUNC5(cell, result, ret);
	else
		vllist = FUNC6(cell->net, result, ret, ',',
					      VL_SERVICE, AFS_VL_PORT);
	FUNC8(result);
	if (FUNC1(vllist) && vllist != FUNC0(-ENOMEM))
		FUNC10("Failed to parse DNS data %ld\n", FUNC2(vllist));

	return vllist;
}