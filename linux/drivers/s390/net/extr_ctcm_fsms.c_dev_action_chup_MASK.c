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
struct net_device {int /*<<< orphan*/  dev; struct ctcm_priv* ml_priv; int /*<<< orphan*/  name; } ;
struct ctcm_priv {int /*<<< orphan*/ * channel; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctcm_priv*,int,int) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 size_t CTCM_READ ; 
 size_t CTCM_WRITE ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int DEV_EVENT_RXUP ; 
 int DEV_EVENT_TXUP ; 
 int DEV_STATE_RUNNING ; 
#define  DEV_STATE_STARTWAIT_RX 132 
#define  DEV_STATE_STARTWAIT_RXTX 131 
#define  DEV_STATE_STARTWAIT_TX 130 
#define  DEV_STATE_STOPWAIT_RX 129 
 int DEV_STATE_STOPWAIT_RXTX ; 
#define  DEV_STATE_STOPWAIT_TX 128 
 scalar_t__ FUNC1 (struct ctcm_priv*) ; 
 int /*<<< orphan*/  MPC_CHANNEL_ADD ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(fsm_instance *fi, int event, void *arg)
{
	struct net_device *dev = arg;
	struct ctcm_priv *priv = dev->ml_priv;
	int dev_stat = FUNC4(fi);

	FUNC0(SETUP, CTC_DBF_NOTICE,
			"%s(%s): priv = %p [%d,%d]\n ",	CTCM_FUNTAIL,
				dev->name, dev->ml_priv, dev_stat, event);

	switch (FUNC4(fi)) {
	case DEV_STATE_STARTWAIT_RXTX:
		if (event == DEV_EVENT_RXUP)
			FUNC5(fi, DEV_STATE_STARTWAIT_TX);
		else
			FUNC5(fi, DEV_STATE_STARTWAIT_RX);
		break;
	case DEV_STATE_STARTWAIT_RX:
		if (event == DEV_EVENT_RXUP) {
			FUNC5(fi, DEV_STATE_RUNNING);
			FUNC3(&dev->dev,
				"Connected with remote side\n");
			FUNC2(dev);
		}
		break;
	case DEV_STATE_STARTWAIT_TX:
		if (event == DEV_EVENT_TXUP) {
			FUNC5(fi, DEV_STATE_RUNNING);
			FUNC3(&dev->dev,
				"Connected with remote side\n");
			FUNC2(dev);
		}
		break;
	case DEV_STATE_STOPWAIT_TX:
		if (event == DEV_EVENT_RXUP)
			FUNC5(fi, DEV_STATE_STOPWAIT_RXTX);
		break;
	case DEV_STATE_STOPWAIT_RX:
		if (event == DEV_EVENT_TXUP)
			FUNC5(fi, DEV_STATE_STOPWAIT_RXTX);
		break;
	}

	if (FUNC1(priv)) {
		if (event == DEV_EVENT_RXUP)
			FUNC6(priv->channel[CTCM_READ],
				CTCM_READ, MPC_CHANNEL_ADD);
		else
			FUNC6(priv->channel[CTCM_WRITE],
				CTCM_WRITE, MPC_CHANNEL_ADD);
	}
}