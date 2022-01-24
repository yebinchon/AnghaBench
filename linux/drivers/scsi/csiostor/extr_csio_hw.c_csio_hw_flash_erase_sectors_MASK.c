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
struct csio_hw {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int SF_ERASE_SECTOR ; 
 int /*<<< orphan*/  SF_OP_A ; 
 int SF_WR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,int,int) ; 
 int FUNC1 (struct csio_hw*,int,int) ; 
 int FUNC2 (struct csio_hw*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct csio_hw *hw, int32_t start, int32_t end)
{
	int ret = 0;

	while (start <= end) {

		ret = FUNC2(hw, 1, 0, 1, SF_WR_ENABLE);
		if (ret != 0)
			goto out;

		ret = FUNC2(hw, 4, 0, 1,
					SF_ERASE_SECTOR | (start << 8));
		if (ret != 0)
			goto out;

		ret = FUNC1(hw, 14, 500);
		if (ret != 0)
			goto out;

		start++;
	}
out:
	if (ret)
		FUNC0(hw, "erase of flash sector %d failed, error %d\n",
			 start, ret);
	FUNC3(hw, 0, SF_OP_A);    /* unlock SF */
	return 0;
}