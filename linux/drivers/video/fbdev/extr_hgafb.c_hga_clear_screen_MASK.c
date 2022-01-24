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
 scalar_t__ HGA_GFX ; 
 scalar_t__ HGA_TXT ; 
 scalar_t__ hga_mode ; 
 int /*<<< orphan*/  hga_reg_lock ; 
 int /*<<< orphan*/  hga_vram ; 
 int /*<<< orphan*/  hga_vram_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned char fillchar = 0xbf; /* magic */
	unsigned long flags;

	FUNC1(&hga_reg_lock, flags);
	if (hga_mode == HGA_TXT)
		fillchar = ' ';
	else if (hga_mode == HGA_GFX)
		fillchar = 0x00;
	FUNC2(&hga_reg_lock, flags);
	if (fillchar != 0xbf)
		FUNC0(hga_vram, fillchar, hga_vram_len);
}