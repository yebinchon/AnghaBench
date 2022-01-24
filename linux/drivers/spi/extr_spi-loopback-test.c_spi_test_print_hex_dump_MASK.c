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
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,void const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char *pre, const void *ptr, size_t len)
{
	/* limit the hex_dump */
	if (len < 1024) {
		FUNC1(KERN_INFO, pre,
			       DUMP_PREFIX_OFFSET, 16, 1,
			       ptr, len, 0);
		return;
	}
	/* print head */
	FUNC1(KERN_INFO, pre,
		       DUMP_PREFIX_OFFSET, 16, 1,
		       ptr, 512, 0);
	/* print tail */
	FUNC0("%s truncated - continuing at offset %04zx\n",
		pre, len - 512);
	FUNC1(KERN_INFO, pre,
		       DUMP_PREFIX_OFFSET, 16, 1,
		       ptr + (len - 512), 512, 0);
}