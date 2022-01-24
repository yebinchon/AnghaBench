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

/* Variables and functions */
 int CACHE_FSCACHE ; 
 int CACHE_LOOSE ; 
 int CACHE_MMAP ; 
 int CACHE_NONE ; 
 int EINVAL ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char *s)
{
	int version = -EINVAL;

	if (!FUNC2(s, "loose")) {
		version = CACHE_LOOSE;
		FUNC0(P9_DEBUG_9P, "Cache mode: loose\n");
	} else if (!FUNC2(s, "fscache")) {
		version = CACHE_FSCACHE;
		FUNC0(P9_DEBUG_9P, "Cache mode: fscache\n");
	} else if (!FUNC2(s, "mmap")) {
		version = CACHE_MMAP;
		FUNC0(P9_DEBUG_9P, "Cache mode: mmap\n");
	} else if (!FUNC2(s, "none")) {
		version = CACHE_NONE;
		FUNC0(P9_DEBUG_9P, "Cache mode: none\n");
	} else
		FUNC1("Unknown Cache mode %s\n", s);
	return version;
}