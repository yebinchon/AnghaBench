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
struct pd6729_socket {int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  socket; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  I365_CSCINT ; 
 int /*<<< orphan*/  I365_INTCTL ; 
 int MAX_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pd6729_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct pd6729_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int irq_mode ; 
 int /*<<< orphan*/  FUNC3 (struct pd6729_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pd6729_socket* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	int i;
	struct pd6729_socket *socket = FUNC5(dev);

	for (i = 0; i < MAX_SOCKETS; i++) {
		/* Turn off all interrupt sources */
		FUNC2(&socket[i], I365_CSCINT, 0);
		FUNC2(&socket[i], I365_INTCTL, 0);

		FUNC7(&socket[i].socket);
	}

	if (irq_mode == 1)
		FUNC1(dev->irq, socket);
	else
		FUNC0(&socket->poll_timer);
	FUNC6(dev);
	FUNC4(dev);

	FUNC3(socket);
}