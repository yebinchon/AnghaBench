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
struct yenta_socket {int /*<<< orphan*/  base; int /*<<< orphan*/  poll_timer; scalar_t__ cb_irq; int /*<<< orphan*/  socket; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB_SOCKET_MASK ; 
 int /*<<< orphan*/  I365_CSCINT ; 
 int /*<<< orphan*/  FUNC0 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_yenta_registers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct yenta_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct yenta_socket* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct yenta_socket*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *dev)
{
	struct yenta_socket *sock = FUNC8(dev);

	/* Remove the register attributes */
	FUNC2(&dev->dev, &dev_attr_yenta_registers);

	/* we don't want a dying socket registered */
	FUNC11(&sock->socket);

	/* Disable all events so we don't die in an IRQ storm */
	FUNC0(sock, CB_SOCKET_MASK, 0x0);
	FUNC3(sock, I365_CSCINT, 0);

	if (sock->cb_irq)
		FUNC4(sock->cb_irq, sock);
	else
		FUNC1(&sock->poll_timer);

	FUNC5(sock->base);
	FUNC12(sock);

	FUNC9(dev);
	FUNC7(dev);
	FUNC10(dev, NULL);
	FUNC6(sock);
}