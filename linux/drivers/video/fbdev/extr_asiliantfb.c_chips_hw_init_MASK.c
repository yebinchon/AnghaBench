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
struct fb_info {int dummy; } ;
struct TYPE_8__ {int addr; int data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* chips_init_ar ; 
 TYPE_1__* chips_init_cr ; 
 TYPE_1__* chips_init_fr ; 
 TYPE_1__* chips_init_gr ; 
 TYPE_1__* chips_init_sr ; 
 TYPE_1__* chips_init_xr ; 
 scalar_t__ mmio_base ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct fb_info *p)
{
	int i;

	for (i = 0; i < FUNC0(chips_init_xr); ++i)
		FUNC6(chips_init_xr[i].addr, chips_init_xr[i].data);
	FUNC6(0x81, 0x12);
	FUNC6(0x82, 0x08);
	FUNC6(0x20, 0x00);
	for (i = 0; i < FUNC0(chips_init_sr); ++i)
		FUNC5(chips_init_sr[i].addr, chips_init_sr[i].data);
	for (i = 0; i < FUNC0(chips_init_gr); ++i)
		FUNC4(chips_init_gr[i].addr, chips_init_gr[i].data);
	for (i = 0; i < FUNC0(chips_init_ar); ++i)
		FUNC1(chips_init_ar[i].addr, chips_init_ar[i].data);
	/* Enable video output in attribute index register */
	FUNC7(0x20, mmio_base + 0x780);
	for (i = 0; i < FUNC0(chips_init_cr); ++i)
		FUNC2(chips_init_cr[i].addr, chips_init_cr[i].data);
	for (i = 0; i < FUNC0(chips_init_fr); ++i)
		FUNC3(chips_init_fr[i].addr, chips_init_fr[i].data);
}