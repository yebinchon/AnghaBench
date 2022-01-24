#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; scalar_t__ io_irq; } ;
struct TYPE_8__ {int /*<<< orphan*/  pci_irq; } ;
struct soc_pcmcia_socket {int irq_state; TYPE_3__ cs_state; TYPE_2__ socket; struct gpio_desc* gpio_bus_enable; struct gpio_desc* gpio_reset; TYPE_1__* ops; int /*<<< orphan*/  nr; } ;
struct gpio_desc {int dummy; } ;
typedef  TYPE_3__ socket_state_t ;
struct TYPE_7__ {int (* configure_socket ) (struct soc_pcmcia_socket*,TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int SS_OUTPUT_ENA ; 
 int SS_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct gpio_desc**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct soc_pcmcia_socket*,TYPE_3__*) ; 
 int FUNC7 (struct soc_pcmcia_socket*,TYPE_3__*) ; 
 int /*<<< orphan*/  values ; 

__attribute__((used)) static int FUNC8(
	struct soc_pcmcia_socket *skt, socket_state_t *state)
{
	int ret;

	ret = skt->ops->configure_socket(skt, state);
	if (ret < 0) {
		FUNC5("soc_common_pcmcia: unable to configure socket %d\n",
		       skt->nr);
		/* restore the previous state */
		FUNC1(skt->ops->configure_socket(skt, &skt->cs_state));
		return ret;
	}

	if (ret == 0) {
		struct gpio_desc *descs[2];
		FUNC0(values, 2);
		int n = 0;

		if (skt->gpio_reset) {
			descs[n] = skt->gpio_reset;
			FUNC2(n++, values, state->flags & SS_RESET);
		}
		if (skt->gpio_bus_enable) {
			descs[n] = skt->gpio_bus_enable;
			FUNC2(n++, values, state->flags & SS_OUTPUT_ENA);
		}

		if (n)
			FUNC3(n, descs, NULL, values);

		/*
		 * This really needs a better solution.  The IRQ
		 * may or may not be claimed by the driver.
		 */
		if (skt->irq_state != 1 && state->io_irq) {
			skt->irq_state = 1;
			FUNC4(skt->socket.pci_irq,
					 IRQ_TYPE_EDGE_FALLING);
		} else if (skt->irq_state == 1 && state->io_irq == 0) {
			skt->irq_state = 0;
			FUNC4(skt->socket.pci_irq, IRQ_TYPE_NONE);
		}

		skt->cs_state = *state;
	}

	return ret;
}