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
struct pqi_ctrl_info {int dummy; } ;
struct bmic_flush_cache {int shutdown_event; } ;
typedef  enum bmic_flush_cache_shutdown_event { ____Placeholder_bmic_flush_cache_shutdown_event } bmic_flush_cache_shutdown_event ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SA_FLUSH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct bmic_flush_cache*) ; 
 struct bmic_flush_cache* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pqi_ctrl_info*) ; 
 int FUNC3 (struct pqi_ctrl_info*,int /*<<< orphan*/ ,struct bmic_flush_cache*,int) ; 

__attribute__((used)) static int FUNC4(struct pqi_ctrl_info *ctrl_info,
	enum bmic_flush_cache_shutdown_event shutdown_event)
{
	int rc;
	struct bmic_flush_cache *flush_cache;

	/*
	 * Don't bother trying to flush the cache if the controller is
	 * locked up.
	 */
	if (FUNC2(ctrl_info))
		return -ENXIO;

	flush_cache = FUNC1(sizeof(*flush_cache), GFP_KERNEL);
	if (!flush_cache)
		return -ENOMEM;

	flush_cache->shutdown_event = shutdown_event;

	rc = FUNC3(ctrl_info, SA_FLUSH_CACHE, flush_cache,
		sizeof(*flush_cache));

	FUNC0(flush_cache);

	return rc;
}