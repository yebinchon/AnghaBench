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
struct vrc4171_socket {int /*<<< orphan*/  lock; void* io_irq; void* csc_irq; } ;
struct pcmcia_socket {int features; int map_size; unsigned int sock; int /*<<< orphan*/  pci_irq; scalar_t__ irq_mask; } ;

/* Variables and functions */
 int SS_CAP_PAGE_REGS ; 
 int SS_CAP_PCCARD ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vrc4171_irq ; 
 struct vrc4171_socket* vrc4171_sockets ; 

__attribute__((used)) static int FUNC2(struct pcmcia_socket *sock)
{
	struct vrc4171_socket *socket;
	unsigned int slot;

	sock->features |= SS_CAP_PCCARD | SS_CAP_PAGE_REGS;
	sock->irq_mask = 0;
	sock->map_size = 0x1000;
	sock->pci_irq = vrc4171_irq;

	slot = sock->sock;
	socket = &vrc4171_sockets[slot];
	socket->csc_irq = FUNC0();
	socket->io_irq = FUNC0();
	FUNC1(&socket->lock);

	return 0;
}