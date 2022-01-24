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
typedef  int uint32_t ;
struct csio_hw {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SF_ATTEMPTS ; 
 int SF_BUSY_F ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SF_DATA_A ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SF_OP_A ; 
 int FUNC3 (struct csio_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct csio_hw *hw, uint32_t byte_cnt, int32_t cont,
		 int32_t lock, uint32_t *valp)
{
	int ret;

	if (!byte_cnt || byte_cnt > 4)
		return -EINVAL;
	if (FUNC4(hw, SF_OP_A) & SF_BUSY_F)
		return -EBUSY;

	FUNC5(hw,  FUNC2(lock) | FUNC1(cont) |
		      FUNC0(byte_cnt - 1), SF_OP_A);
	ret = FUNC3(hw, SF_OP_A, SF_BUSY_F, 0, SF_ATTEMPTS,
				       10, NULL);
	if (!ret)
		*valp = FUNC4(hw, SF_DATA_A);
	return ret;
}