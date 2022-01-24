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
struct moxa_board_conf {unsigned int numPorts; TYPE_1__* ports; int /*<<< orphan*/ * basemem; scalar_t__ ready; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int MAX_PORTS_PER_BOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  moxaDriver ; 
 struct moxa_board_conf* moxa_boards ; 
 int /*<<< orphan*/  moxa_lock ; 
 int /*<<< orphan*/  moxa_openlock ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct moxa_board_conf *brd)
{
	unsigned int a, opened, first_idx;

	FUNC3(&moxa_openlock);
	FUNC5(&moxa_lock);
	brd->ready = 0;
	FUNC6(&moxa_lock);

	/* pci hot-un-plug support */
	for (a = 0; a < brd->numPorts; a++)
		if (FUNC8(&brd->ports[a].port))
			FUNC9(&brd->ports[a].port, false);

	for (a = 0; a < MAX_PORTS_PER_BOARD; a++)
		FUNC7(&brd->ports[a].port);

	while (1) {
		opened = 0;
		for (a = 0; a < brd->numPorts; a++)
			if (FUNC8(&brd->ports[a].port))
				opened++;
		FUNC4(&moxa_openlock);
		if (!opened)
			break;
		FUNC2(50);
		FUNC3(&moxa_openlock);
	}

	first_idx = (brd - moxa_boards) * MAX_PORTS_PER_BOARD;
	for (a = 0; a < brd->numPorts; a++)
		FUNC10(moxaDriver, first_idx + a);

	FUNC0(brd->basemem);
	brd->basemem = NULL;
	FUNC1(brd->ports);
}