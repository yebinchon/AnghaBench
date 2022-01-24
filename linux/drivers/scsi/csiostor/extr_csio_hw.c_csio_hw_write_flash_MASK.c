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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int sf_size; } ;
struct csio_hw {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SF_OP_A ; 
 int SF_PAGE_SIZE ; 
 int SF_PROG_PAGE ; 
 int SF_WR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,int) ; 
 int FUNC2 (struct csio_hw*,int,int) ; 
 int FUNC3 (struct csio_hw*,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (struct csio_hw*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int,unsigned int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw, uint32_t addr,
		    uint32_t n, const uint8_t *data)
{
	int ret = -EINVAL;
	uint32_t buf[64];
	uint32_t i, c, left, val, offset = addr & 0xff;

	if (addr >= hw->params.sf_size || offset + n > SF_PAGE_SIZE)
		return -EINVAL;

	val = FUNC8(addr) | SF_PROG_PAGE;

	ret = FUNC4(hw, 1, 0, 1, SF_WR_ENABLE);
	if (ret != 0)
		goto unlock;

	ret = FUNC4(hw, 4, 1, 1, val);
	if (ret != 0)
		goto unlock;

	for (left = n; left; left -= c) {
		c = FUNC7(left, 4U);
		for (val = 0, i = 0; i < c; ++i)
			val = (val << 8) + *data++;

		ret = FUNC4(hw, c, c != left, 1, val);
		if (ret)
			goto unlock;
	}
	ret = FUNC2(hw, 8, 1);
	if (ret)
		goto unlock;

	FUNC5(hw, 0, SF_OP_A);    /* unlock SF */

	/* Read the page to verify the write succeeded */
	ret = FUNC3(hw, addr & ~0xff, FUNC0(buf), buf, 1);
	if (ret)
		return ret;

	if (FUNC6(data - n, (uint8_t *)buf + offset, n)) {
		FUNC1(hw,
			 "failed to correctly write the flash page at %#x\n",
			 addr);
		return -EINVAL;
	}

	return 0;

unlock:
	FUNC5(hw, 0, SF_OP_A);    /* unlock SF */
	return ret;
}