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
 int /*<<< orphan*/  S3C2410_UDC_OUT_FIFO_CNT1_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_OUT_FIFO_CNT2_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	int tmp;

	tmp = FUNC0(S3C2410_UDC_OUT_FIFO_CNT2_REG) << 8;
	tmp |= FUNC0(S3C2410_UDC_OUT_FIFO_CNT1_REG);
	return tmp;
}