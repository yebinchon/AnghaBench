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
struct vgastate {int num_crtc; int num_attr; int num_gfx; int num_seq; int /*<<< orphan*/  vgabase; scalar_t__ vidstate; } ;
struct regstate {int misc; int /*<<< orphan*/ * seq; int /*<<< orphan*/ * gfx; int /*<<< orphan*/ * attr; int /*<<< orphan*/ * crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_ATT_W ; 
 unsigned short VGA_MIS_R ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct vgastate *state)
{
	struct regstate *saved = (struct regstate *) state->vidstate;
	unsigned short iobase;
	int i;

	saved->misc = FUNC0(state->vgabase, VGA_MIS_R);
	if (saved->misc & 1)
		iobase = 0x3d0;
	else
		iobase = 0x3b0;

	for (i = 0; i < state->num_crtc; i++)
		saved->crtc[i] = FUNC2(state->vgabase, iobase, i);

	FUNC0(state->vgabase, iobase + 0xa);
	FUNC5(state->vgabase, VGA_ATT_W, 0x00);
	for (i = 0; i < state->num_attr; i++) {
		FUNC0(state->vgabase, iobase + 0xa);
		saved->attr[i] = FUNC1(state->vgabase, i);
	}
	FUNC0(state->vgabase, iobase + 0xa);
	FUNC5(state->vgabase, VGA_ATT_W, 0x20);

	for (i = 0; i < state->num_gfx; i++)
		saved->gfx[i] = FUNC3(state->vgabase, i);

	for (i = 0; i < state->num_seq; i++)
		saved->seq[i] = FUNC4(state->vgabase, i);
}