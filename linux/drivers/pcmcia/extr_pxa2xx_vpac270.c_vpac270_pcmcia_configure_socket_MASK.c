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
struct soc_pcmcia_socket {scalar_t__ nr; } ;
struct TYPE_3__ {int flags; int Vcc; } ;
typedef  TYPE_1__ socket_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO107_VPAC270_PCMCIA_PPEN ; 
 int /*<<< orphan*/  GPIO11_VPAC270_PCMCIA_RESET ; 
 int /*<<< orphan*/  GPIO16_VPAC270_CF_RESET ; 
 int SS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct soc_pcmcia_socket *skt,
				const socket_state_t *state)
{
	if (skt->nr == 0) {
		FUNC0(GPIO11_VPAC270_PCMCIA_RESET,
			(state->flags & SS_RESET));
		FUNC0(GPIO107_VPAC270_PCMCIA_PPEN,
			!(state->Vcc == 33 || state->Vcc == 50));
	} else {
		FUNC0(GPIO16_VPAC270_CF_RESET,
			(state->flags & SS_RESET));
	}

	return 0;
}