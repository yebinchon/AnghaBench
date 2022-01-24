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
typedef  int uint16_t ;
struct soc_pcmcia_socket {size_t nr; } ;
struct pcmcia_state {int ready; int bvd1; int vs_3v; scalar_t__ vs_Xv; scalar_t__ bvd2; } ;

/* Variables and functions */
 int /*<<< orphan*/  BALLOON3_BP_NSTSCHG_IRQ ; 
 int /*<<< orphan*/  BALLOON3_CF_STATUS_REG ; 
 int BALLOON3_CF_nIRQ ; 
 int BALLOON3_CF_nSTSCHG_BVD1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* balloon3_pcmcia_status ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct soc_pcmcia_socket *skt,
				    struct pcmcia_state *state)
{
	uint16_t status;
	int flip;

	/* This actually reads the STATUS register */
	status = FUNC0(BALLOON3_CF_STATUS_REG);
	flip = (status ^ balloon3_pcmcia_status[skt->nr])
		& BALLOON3_CF_nSTSCHG_BVD1;
	/*
	 * Workaround for STSCHG which can't be deasserted:
	 * We therefore disable/enable corresponding IRQs
	 * as needed to avoid IRQ locks.
	 */
	if (flip) {
		balloon3_pcmcia_status[skt->nr] = status;
		if (status & BALLOON3_CF_nSTSCHG_BVD1)
			FUNC2(BALLOON3_BP_NSTSCHG_IRQ);
		else
			FUNC1(BALLOON3_BP_NSTSCHG_IRQ);
	}

	state->ready	= !!(status & BALLOON3_CF_nIRQ);
	state->bvd1	= !!(status & BALLOON3_CF_nSTSCHG_BVD1);
	state->bvd2	= 0;	/* not available */
	state->vs_3v	= 1;	/* Always true its a CF card */
	state->vs_Xv	= 0;	/* not available */
}