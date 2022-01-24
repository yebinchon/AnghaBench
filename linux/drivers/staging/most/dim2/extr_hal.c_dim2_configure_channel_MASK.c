#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int /*<<< orphan*/  ACMR0; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHB_CAT ; 
 int /*<<< orphan*/  MLB_CAT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ g ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
	u8 ch_addr, u8 type, u8 is_tx, u16 dbr_address, u16 hw_buffer_size,
	u16 packet_length)
{
	FUNC3(ch_addr, dbr_address, hw_buffer_size, packet_length);
	FUNC2(MLB_CAT, ch_addr, type, is_tx ? 1 : 0);

	FUNC1(ch_addr);
	FUNC2(AHB_CAT, ch_addr, type, is_tx ? 0 : 1);

	/* unmask interrupt for used channel, enable mlb_sys_int[0] interrupt */
	FUNC5(FUNC4(&g.dim2->ACMR0) | FUNC0(ch_addr), &g.dim2->ACMR0);
}