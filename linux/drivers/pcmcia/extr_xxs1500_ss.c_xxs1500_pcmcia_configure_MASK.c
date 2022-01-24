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
struct xxs1500_pcmcia_sock {unsigned int old_flags; } ;
struct socket_state_t {int Vcc; unsigned int flags; } ;
struct pcmcia_socket {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_OUTEN ; 
 int /*<<< orphan*/  GPIO_POWER ; 
 int /*<<< orphan*/  GPIO_RESET ; 
 unsigned int SS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct xxs1500_pcmcia_sock* FUNC2 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_socket *skt,
				    struct socket_state_t *state)
{
	struct xxs1500_pcmcia_sock *sock = FUNC2(skt);
	unsigned int changed;

	/* power control */
	switch (state->Vcc) {
	case 0:
		FUNC0(GPIO_POWER, 1);	/* power off */
		break;
	case 33:
		FUNC0(GPIO_POWER, 0);	/* power on */
		break;
	case 50:
	default:
		return -EINVAL;
	}

	changed = state->flags ^ sock->old_flags;

	if (changed & SS_RESET) {
		if (state->flags & SS_RESET) {
			FUNC0(GPIO_RESET, 1);	/* assert reset */
			FUNC0(GPIO_OUTEN, 1);	/* buffers off */
		} else {
			FUNC0(GPIO_RESET, 0);	/* deassert reset */
			FUNC0(GPIO_OUTEN, 0);	/* buffers on */
			FUNC1(500);
		}
	}

	sock->old_flags = state->flags;

	return 0;
}