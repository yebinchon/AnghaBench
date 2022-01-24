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
struct spi_message {int /*<<< orphan*/  context; int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * state; } ;
struct spi_controller {int cur_msg_prepared; int (* unprepare_message ) (struct spi_controller*,struct spi_message*) ;int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  pump_messages; int /*<<< orphan*/  kworker; struct spi_message* cur_msg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_controller*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct spi_controller*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_message*) ; 

void FUNC8(struct spi_controller *ctlr)
{
	struct spi_message *mesg;
	unsigned long flags;
	int ret;

	FUNC3(&ctlr->queue_lock, flags);
	mesg = ctlr->cur_msg;
	FUNC4(&ctlr->queue_lock, flags);

	FUNC2(ctlr, mesg);

	if (ctlr->cur_msg_prepared && ctlr->unprepare_message) {
		ret = ctlr->unprepare_message(ctlr, mesg);
		if (ret) {
			FUNC0(&ctlr->dev, "failed to unprepare message: %d\n",
				ret);
		}
	}

	FUNC3(&ctlr->queue_lock, flags);
	ctlr->cur_msg = NULL;
	ctlr->cur_msg_prepared = false;
	FUNC1(&ctlr->kworker, &ctlr->pump_messages);
	FUNC4(&ctlr->queue_lock, flags);

	FUNC7(mesg);

	mesg->state = NULL;
	if (mesg->complete)
		mesg->complete(mesg->context);
}