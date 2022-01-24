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
struct v9fs_session_info {int /*<<< orphan*/ * fscache; int /*<<< orphan*/ * cachetag; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v9fs_session_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct v9fs_session_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ v9fs_cache_netfs ; 
 int /*<<< orphan*/  v9fs_cache_session_index_def ; 
 scalar_t__ FUNC4 (struct v9fs_session_info*) ; 

void FUNC5(struct v9fs_session_info *v9ses)
{
	/* If no cache session tag was specified, we generate a random one. */
	if (!v9ses->cachetag) {
		if (FUNC4(v9ses) < 0) {
			v9ses->fscache = NULL;
			FUNC1(v9ses->cachetag);
			v9ses->cachetag = NULL;
			return;
		}
	}

	v9ses->fscache = FUNC0(v9fs_cache_netfs.primary_index,
						&v9fs_cache_session_index_def,
						v9ses->cachetag,
						FUNC3(v9ses->cachetag),
						NULL, 0,
						v9ses, 0, true);
	FUNC2(P9_DEBUG_FSC, "session %p get cookie %p\n",
		 v9ses, v9ses->fscache);
}