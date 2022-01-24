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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i82092aa_interrupt ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int socket_count ; 
 TYPE_1__* sockets ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	int i;

	FUNC0("i82092aa_pci_remove");
	
	FUNC1(dev->irq, i82092aa_interrupt);

	for (i = 0; i < socket_count; i++)
		FUNC3(&sockets[i].socket);

	FUNC2("i82092aa_pci_remove");
}