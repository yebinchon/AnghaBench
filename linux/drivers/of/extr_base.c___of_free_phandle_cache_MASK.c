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
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * phandle_cache ; 
 size_t phandle_cache_mask ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 cache_entries = phandle_cache_mask + 1;
	u32 k;

	if (!phandle_cache)
		return;

	for (k = 0; k < cache_entries; k++)
		FUNC1(phandle_cache[k]);

	FUNC0(phandle_cache);
	phandle_cache = NULL;
}