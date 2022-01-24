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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, u32 bit_count)
{
	u32 i, j, mask = 0xffffffff;

	FUNC1(dev, "ErrInt, EDATA:\n");
	i = bit_count / 32;
	if (bit_count % 32) {
		i++;
		mask = ~(mask << bit_count % 32);
	}
	j = 16 - i;
	FUNC1(dev, "  0x%08x\n", FUNC2(FUNC0(j)) & mask);
	j++;
	for (; j < 16; j++)
		FUNC1(dev, "  0x%08x\n", FUNC2(FUNC0(j)));
}