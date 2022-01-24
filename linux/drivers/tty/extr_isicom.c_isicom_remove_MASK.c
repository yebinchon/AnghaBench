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
struct pci_dev {int dummy; } ;
struct isi_board {unsigned int port_count; int index; scalar_t__ base; int /*<<< orphan*/  irq; TYPE_1__* ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  card_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct isi_board*) ; 
 int /*<<< orphan*/  isicom_normal ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct isi_board* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct isi_board *board = FUNC2(pdev);
	unsigned int i;

	for (i = 0; i < board->port_count; i++) {
		FUNC5(isicom_normal, board->index * 16 + i);
		FUNC4(&board->ports[i].port);
	}

	FUNC0(board->irq, board);
	FUNC3(pdev, 3);
	board->base = 0;
	card_count--;
	FUNC1(pdev);
}