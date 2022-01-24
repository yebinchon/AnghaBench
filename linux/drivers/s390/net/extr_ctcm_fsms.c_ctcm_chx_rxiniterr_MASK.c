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
struct net_device {int /*<<< orphan*/  dev; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int /*<<< orphan*/  fsm; } ;
struct channel {int /*<<< orphan*/  id; int /*<<< orphan*/  retry; int /*<<< orphan*/  timer; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_ERROR ; 
 int CTC_EVENT_TIMER ; 
 int /*<<< orphan*/  CTC_STATE_RXERR ; 
 int /*<<< orphan*/  DEV_EVENT_RXDOWN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * ctc_ch_event_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;

	if (event == CTC_EVENT_TIMER) {
		if (!FUNC1(dev))
			/* TODO : check if MPC deletes timer somewhere */
			FUNC4(&ch->timer);
		if (ch->retry++ < 3)
			FUNC2(fi, event, arg);
		else {
			FUNC7(fi, CTC_STATE_RXERR);
			FUNC5(priv->fsm, DEV_EVENT_RXDOWN, dev);
		}
	} else {
		FUNC0(ERROR, CTC_DBF_ERROR,
			"%s(%s): %s in %s", CTCM_FUNTAIL, ch->id,
			ctc_ch_event_names[event], FUNC6(fi));

		FUNC3(&dev->dev,
			"Initialization failed with RX/TX init handshake "
			"error %s\n", ctc_ch_event_names[event]);
	}
}