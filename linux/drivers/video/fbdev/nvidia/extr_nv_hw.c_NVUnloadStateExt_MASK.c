#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvidia_par {scalar_t__ Architecture; int Chipset; int /*<<< orphan*/  PCIO; scalar_t__ FlatPanel; int /*<<< orphan*/  PRAMDAC; scalar_t__ twoHeads; int /*<<< orphan*/  PCRTC; int /*<<< orphan*/  PCRTC0; int /*<<< orphan*/  PRAMDAC0; int /*<<< orphan*/  PFB; scalar_t__ twoStagePLL; } ;
struct TYPE_3__ {int repaint0; int repaint1; int screen; int pixel; int horiz; int fifo; int arbitration0; int arbitration1; int cursor0; int cursor1; int cursor2; int interlace; int crtcOwner; int extra; int timingH; int timingV; void* dither; void* cursorConfig; void* head2; void* head; void* control; void* config; void* scale; void* general; void* pllsel; void* vpll2B; void* vpllB; void* vpll2; void* vpll; } ;
typedef  TYPE_1__ RIVA_HW_STATE ;

/* Variables and functions */
 scalar_t__ NV_ARCH_10 ; 
 scalar_t__ NV_ARCH_30 ; 
 scalar_t__ NV_ARCH_40 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct nvidia_par *par, RIVA_HW_STATE * state) {
	FUNC2(par->PCIO, 0x03D4, 0x19);
	state->repaint0 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x1A);
	state->repaint1 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x25);
	state->screen = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x28);
	state->pixel = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x2D);
	state->horiz = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x1C);
	state->fifo         = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x1B);
	state->arbitration0 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x20);
	state->arbitration1 = FUNC1(par->PCIO, 0x03D5);

	if(par->Architecture >= NV_ARCH_30) {
		FUNC2(par->PCIO, 0x03D4, 0x47);
		state->arbitration1 |= (FUNC1(par->PCIO, 0x03D5) & 1) << 8;
	}

	FUNC2(par->PCIO, 0x03D4, 0x30);
	state->cursor0 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x31);
	state->cursor1 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x2F);
	state->cursor2 = FUNC1(par->PCIO, 0x03D5);
	FUNC2(par->PCIO, 0x03D4, 0x39);
	state->interlace = FUNC1(par->PCIO, 0x03D5);
	state->vpll = FUNC0(par->PRAMDAC0, 0x0508);
	if (par->twoHeads)
		state->vpll2 = FUNC0(par->PRAMDAC0, 0x0520);
	if (par->twoStagePLL) {
		state->vpllB = FUNC0(par->PRAMDAC0, 0x0578);
		state->vpll2B = FUNC0(par->PRAMDAC0, 0x057C);
	}
	state->pllsel = FUNC0(par->PRAMDAC0, 0x050C);
	state->general = FUNC0(par->PRAMDAC, 0x0600);
	state->scale = FUNC0(par->PRAMDAC, 0x0848);
	state->config = FUNC0(par->PFB, 0x0200);

	if (par->Architecture >= NV_ARCH_40 && !par->FlatPanel)
		state->control  = FUNC0(par->PRAMDAC0, 0x0580);

	if (par->Architecture >= NV_ARCH_10) {
		if (par->twoHeads) {
			state->head = FUNC0(par->PCRTC0, 0x0860);
			state->head2 = FUNC0(par->PCRTC0, 0x2860);
			FUNC2(par->PCIO, 0x03D4, 0x44);
			state->crtcOwner = FUNC1(par->PCIO, 0x03D5);
		}
		FUNC2(par->PCIO, 0x03D4, 0x41);
		state->extra = FUNC1(par->PCIO, 0x03D5);
		state->cursorConfig = FUNC0(par->PCRTC, 0x0810);

		if ((par->Chipset & 0x0ff0) == 0x0110) {
			state->dither = FUNC0(par->PRAMDAC, 0x0528);
		} else if (par->twoHeads) {
			state->dither = FUNC0(par->PRAMDAC, 0x083C);
		}

		if (par->FlatPanel) {
			FUNC2(par->PCIO, 0x03D4, 0x53);
			state->timingH = FUNC1(par->PCIO, 0x03D5);
			FUNC2(par->PCIO, 0x03D4, 0x54);
			state->timingV = FUNC1(par->PCIO, 0x03D5);
		}
	}
}