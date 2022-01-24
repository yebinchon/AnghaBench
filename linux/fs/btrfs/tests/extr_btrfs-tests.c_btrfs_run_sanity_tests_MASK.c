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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int BTRFS_MAX_METADATA_BLOCKSIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 () ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 

int FUNC11(void)
{
	int ret, i;
	u32 sectorsize, nodesize;
	u32 test_sectorsize[] = {
		PAGE_SIZE,
	};
	ret = FUNC2();
	if (ret)
		return ret;
	for (i = 0; i < FUNC0(test_sectorsize); i++) {
		sectorsize = test_sectorsize[i];
		for (nodesize = sectorsize;
		     nodesize <= BTRFS_MAX_METADATA_BLOCKSIZE;
		     nodesize <<= 1) {
			FUNC10("BTRFS: selftest: sectorsize: %u  nodesize: %u\n",
				sectorsize, nodesize);
			ret = FUNC6(sectorsize, nodesize);
			if (ret)
				goto out;
			ret = FUNC3(sectorsize,
				nodesize);
			if (ret)
				goto out;
			ret = FUNC4(sectorsize, nodesize);
			if (ret)
				goto out;
			ret = FUNC8(sectorsize, nodesize);
			if (ret)
				goto out;
			ret = FUNC9(sectorsize, nodesize);
			if (ret)
				goto out;
			ret = FUNC7(sectorsize, nodesize);
			if (ret)
				goto out;
		}
	}
	ret = FUNC5();

out:
	FUNC1();
	return ret;
}