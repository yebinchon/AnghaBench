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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SF_ATTEMPTS ; 
 int SF_BUSY_F ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SF_DATA_A ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SF_OP_A ; 
 int FUNC4 (struct csio_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct csio_hw *hw, uint32_t byte_cnt, uint32_t cont,
		  int32_t lock, uint32_t val)
{
	if (!byte_cnt || byte_cnt > 4)
		return -EINVAL;
	if (FUNC5(hw, SF_OP_A) & SF_BUSY_F)
		return -EBUSY;

	FUNC6(hw, val, SF_DATA_A);
	FUNC6(hw, FUNC2(cont) | FUNC0(byte_cnt - 1) |
		      FUNC1(1) | FUNC3(lock), SF_OP_A);

	return FUNC4(hw, SF_OP_A, SF_BUSY_F, 0, SF_ATTEMPTS,
					10, NULL);
}