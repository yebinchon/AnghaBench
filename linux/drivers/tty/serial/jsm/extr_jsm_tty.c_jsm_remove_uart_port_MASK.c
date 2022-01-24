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
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct jsm_channel {TYPE_1__ uart_port; } ;
struct jsm_board {int nasync; int maxports; int /*<<< orphan*/  pci_dev; struct jsm_channel** channels; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  jsm_uart_driver ; 
 int /*<<< orphan*/  linemap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC3(struct jsm_board *brd)
{
	int i;
	struct jsm_channel *ch;

	if (!brd)
		return -ENXIO;

	FUNC1(INIT, &brd->pci_dev, "start\n");

	/*
	 * Initialize board structure elements.
	 */

	brd->nasync = brd->maxports;

	/* Set up channel variables */
	for (i = 0; i < brd->nasync; i++) {

		if (!brd->channels[i])
			continue;

		ch = brd->channels[i];

		FUNC0(ch->uart_port.line, linemap);
		FUNC2(&jsm_uart_driver, &brd->channels[i]->uart_port);
	}

	FUNC1(INIT, &brd->pci_dev, "finish\n");
	return 0;
}