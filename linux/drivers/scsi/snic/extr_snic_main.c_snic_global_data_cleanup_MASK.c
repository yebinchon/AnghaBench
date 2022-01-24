#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * req_cache; int /*<<< orphan*/  event_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SNIC_REQ_CACHE_DFLT_SGL ; 
 size_t SNIC_REQ_CACHE_MAX_SGL ; 
 size_t SNIC_REQ_TM_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* snic_glob ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
	FUNC0(snic_glob == NULL);

	FUNC1(snic_glob->event_q);
	FUNC3(snic_glob->req_cache[SNIC_REQ_TM_CACHE]);
	FUNC3(snic_glob->req_cache[SNIC_REQ_CACHE_MAX_SGL]);
	FUNC3(snic_glob->req_cache[SNIC_REQ_CACHE_DFLT_SGL]);

#ifdef CONFIG_SCSI_SNIC_DEBUG_FS
	/* Freeing Trace Resources */
	snic_trc_free();

	/* Freeing Debugfs Resources */
	snic_debugfs_term();
#endif
	FUNC2(snic_glob);
	snic_glob = NULL;
}