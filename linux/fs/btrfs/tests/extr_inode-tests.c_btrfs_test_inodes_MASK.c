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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 int /*<<< orphan*/  EXTENT_FLAG_PREALLOC ; 
 int /*<<< orphan*/  compressed_only ; 
 int /*<<< orphan*/  prealloc_only ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(u32 sectorsize, u32 nodesize)
{
	int ret;

	FUNC4("running inode tests");

	FUNC0(EXTENT_FLAG_COMPRESSED, &compressed_only);
	FUNC0(EXTENT_FLAG_PREALLOC, &prealloc_only);

	ret = FUNC1(sectorsize, nodesize);
	if (ret)
		return ret;
	ret = FUNC3(sectorsize, nodesize);
	if (ret)
		return ret;
	return FUNC2(sectorsize, nodesize);
}