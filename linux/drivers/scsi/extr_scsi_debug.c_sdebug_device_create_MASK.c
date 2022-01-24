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
struct sdebug_host_info {int /*<<< orphan*/  dev_info_list; } ;
struct sdebug_dev_info {void* lu_name; int /*<<< orphan*/  dev_list; struct sdebug_host_info* sdbg_host; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int got_shared_uuid ; 
 struct sdebug_dev_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int sdebug_uuid_ctl ; 
 void* shared_uuid ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 

__attribute__((used)) static struct sdebug_dev_info *FUNC3(
			struct sdebug_host_info *sdbg_host, gfp_t flags)
{
	struct sdebug_dev_info *devip;

	devip = FUNC0(sizeof(*devip), flags);
	if (devip) {
		if (sdebug_uuid_ctl == 1)
			FUNC2(&devip->lu_name);
		else if (sdebug_uuid_ctl == 2) {
			if (got_shared_uuid)
				devip->lu_name = shared_uuid;
			else {
				FUNC2(&shared_uuid);
				got_shared_uuid = true;
				devip->lu_name = shared_uuid;
			}
		}
		devip->sdbg_host = sdbg_host;
		FUNC1(&devip->dev_list, &sdbg_host->dev_info_list);
	}
	return devip;
}