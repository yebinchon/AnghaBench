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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  RX_CNTL_CSR ; 
 int /*<<< orphan*/  RX_CNTL_CSR_ENABLE_RX_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC4 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	/*
	 * Initialize all registers.
	 */
	if (FUNC6(FUNC4(rt2x00dev) ||
		     FUNC5(rt2x00dev) ||
		     FUNC3(rt2x00dev)))
		return -EIO;

	/*
	 * Enable RX.
	 */
	reg = FUNC1(rt2x00dev, RX_CNTL_CSR);
	FUNC0(&reg, RX_CNTL_CSR_ENABLE_RX_DMA, 1);
	FUNC2(rt2x00dev, RX_CNTL_CSR, reg);

	return 0;
}