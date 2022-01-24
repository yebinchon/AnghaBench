#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* chips_init_ar ; 
 TYPE_1__* chips_init_cr ; 
 TYPE_1__* chips_init_fr ; 
 TYPE_1__* chips_init_gr ; 
 TYPE_1__* chips_init_sr ; 
 TYPE_1__* chips_init_xr ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;

	for (i = 0; i < FUNC0(chips_init_xr); ++i)
		FUNC7(chips_init_xr[i].addr, chips_init_xr[i].data);
	FUNC1(0x29, 0x3c2); /* set misc output reg */
	for (i = 0; i < FUNC0(chips_init_sr); ++i)
		FUNC6(chips_init_sr[i].addr, chips_init_sr[i].data);
	for (i = 0; i < FUNC0(chips_init_gr); ++i)
		FUNC5(chips_init_gr[i].addr, chips_init_gr[i].data);
	for (i = 0; i < FUNC0(chips_init_ar); ++i)
		FUNC2(chips_init_ar[i].addr, chips_init_ar[i].data);
	for (i = 0; i < FUNC0(chips_init_cr); ++i)
		FUNC3(chips_init_cr[i].addr, chips_init_cr[i].data);
	for (i = 0; i < FUNC0(chips_init_fr); ++i)
		FUNC4(chips_init_fr[i].addr, chips_init_fr[i].data);
}