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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
#define  RF_PATH_A 129 
#define  RF_PATH_B 128 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(u8 path)
{
	u32 base_addr;

	switch (path) {
	case RF_PATH_A:
		base_addr = 0x2800;
		break;
	case RF_PATH_B:
		base_addr = 0x4500;
		break;
	default:
		FUNC0(1);
		return -1;
	}

	return base_addr;
}