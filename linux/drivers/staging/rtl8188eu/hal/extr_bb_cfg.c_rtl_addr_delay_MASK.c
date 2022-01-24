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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct adapter *adapt,
			   u32 addr, u32 bit_mask, u32 data)
{
	switch (addr) {
	case 0xfe:
		FUNC1(50);
		break;
	case 0xfd:
		FUNC0(5);
		break;
	case 0xfc:
		FUNC0(1);
		break;
	case 0xfb:
		FUNC3(50);
		break;
	case 0xfa:
		FUNC3(5);
		break;
	case 0xf9:
		FUNC3(1);
		break;
	default:
		FUNC2(adapt, addr, bit_mask, data);
	}
}