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
struct spi_controller {int bus_num; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; scalar_t__ queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  __unregister ; 
 int /*<<< orphan*/  board_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spi_controller* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct spi_controller*) ; 
 int /*<<< orphan*/  spi_master_idr ; 

void FUNC9(struct spi_controller *ctlr)
{
	struct spi_controller *found;
	int id = ctlr->bus_num;

	/* First make sure that this controller was ever added */
	FUNC6(&board_lock);
	found = FUNC3(&spi_master_idr, id);
	FUNC7(&board_lock);
	if (ctlr->queued) {
		if (FUNC8(ctlr))
			FUNC0(&ctlr->dev, "queue remove failed\n");
	}
	FUNC6(&board_lock);
	FUNC5(&ctlr->list);
	FUNC7(&board_lock);

	FUNC1(&ctlr->dev, NULL, __unregister);
	FUNC2(&ctlr->dev);
	/* free bus id */
	FUNC6(&board_lock);
	if (found == ctlr)
		FUNC4(&spi_master_idr, id);
	FUNC7(&board_lock);
}