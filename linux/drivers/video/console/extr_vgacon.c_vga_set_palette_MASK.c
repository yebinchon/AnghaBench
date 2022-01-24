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
struct vc_data {int* vc_palette; } ;
struct TYPE_2__ {int /*<<< orphan*/  vgabase; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_PEL_D ; 
 int /*<<< orphan*/  VGA_PEL_IW ; 
 int /*<<< orphan*/  VGA_PEL_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const) ; 
 TYPE_1__ vgastate ; 

__attribute__((used)) static void FUNC1(struct vc_data *vc, const unsigned char *table)
{
	int i, j;

	FUNC0(vgastate.vgabase, VGA_PEL_MSK, 0xff);
	for (i = j = 0; i < 16; i++) {
		FUNC0(vgastate.vgabase, VGA_PEL_IW, table[i]);
		FUNC0(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
		FUNC0(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
		FUNC0(vgastate.vgabase, VGA_PEL_D, vc->vc_palette[j++] >> 2);
	}
}