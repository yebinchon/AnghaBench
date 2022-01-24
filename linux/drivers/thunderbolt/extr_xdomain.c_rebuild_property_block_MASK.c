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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int* xdomain_property_block ; 
 int /*<<< orphan*/  xdomain_property_block_gen ; 
 int xdomain_property_block_len ; 
 int /*<<< orphan*/  xdomain_property_dir ; 

__attribute__((used)) static int FUNC3(void)
{
	u32 *block, len;
	int ret;

	ret = FUNC2(xdomain_property_dir, NULL, 0);
	if (ret < 0)
		return ret;

	len = ret;

	block = FUNC0(len, sizeof(u32), GFP_KERNEL);
	if (!block)
		return -ENOMEM;

	ret = FUNC2(xdomain_property_dir, block, len);
	if (ret) {
		FUNC1(block);
		return ret;
	}

	FUNC1(xdomain_property_block);
	xdomain_property_block = block;
	xdomain_property_block_len = len;
	xdomain_property_block_gen++;

	return 0;
}