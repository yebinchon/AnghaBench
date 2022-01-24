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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  fck; int /*<<< orphan*/  bus_pick_width; int /*<<< orphan*/  bus_pick_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RD_ACCESS ; 
 int /*<<< orphan*/  SOSSI_FIFO_REG ; 
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sossi ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void *data, unsigned int len)
{
	FUNC2(sossi.fck);
	FUNC4(RD_ACCESS);
	FUNC0(sossi.bus_pick_count, sossi.bus_pick_width);
	/* CMD#/DATA */
	FUNC8(SOSSI_INIT1_REG, 1 << 18);
	FUNC3(len);
	FUNC9();
	while (len >= 4) {
		*(u32 *) data = FUNC5(SOSSI_FIFO_REG);
		len -= 4;
		data += 4;
	}
	while (len >= 2) {
		*(u16 *) data = FUNC6(SOSSI_FIFO_REG);
		len -= 2;
		data += 2;
	}
	while (len) {
		*(u8 *) data = FUNC7(SOSSI_FIFO_REG);
		len--;
		data++;
	}
	FUNC10();
	FUNC1(sossi.fck);
}