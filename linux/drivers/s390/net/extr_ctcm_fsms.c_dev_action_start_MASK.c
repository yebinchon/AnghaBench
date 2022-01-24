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
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {struct channel** channel; TYPE_1__* mpcg; int /*<<< orphan*/  restart_timer; } ;
struct channel {int /*<<< orphan*/  fsm; } ;
typedef  int /*<<< orphan*/  fsm_instance ;
struct TYPE_2__ {scalar_t__ channels_terminating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int CTCM_READ ; 
 int CTCM_WRITE ; 
 int /*<<< orphan*/  CTC_EVENT_START ; 
 int /*<<< orphan*/  DEV_STATE_STARTWAIT_RXTX ; 
 scalar_t__ FUNC1 (struct ctcm_priv*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(fsm_instance *fi, int event, void *arg)
{
	struct net_device *dev = arg;
	struct ctcm_priv *priv = dev->ml_priv;
	int direction;

	FUNC0(SETUP, dev, "");

	FUNC2(&priv->restart_timer);
	FUNC4(fi, DEV_STATE_STARTWAIT_RXTX);
	if (FUNC1(priv))
		priv->mpcg->channels_terminating = 0;
	for (direction = CTCM_READ; direction <= CTCM_WRITE; direction++) {
		struct channel *ch = priv->channel[direction];
		FUNC3(ch->fsm, CTC_EVENT_START, ch);
	}
}