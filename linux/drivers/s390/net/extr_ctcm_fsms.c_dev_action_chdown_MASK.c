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
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int /*<<< orphan*/ * channel; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 size_t CTCM_READ ; 
 size_t CTCM_WRITE ; 
 int DEV_EVENT_RXDOWN ; 
 int DEV_EVENT_TXDOWN ; 
#define  DEV_STATE_RUNNING 133 
#define  DEV_STATE_STARTWAIT_RX 132 
 int DEV_STATE_STARTWAIT_RXTX ; 
#define  DEV_STATE_STARTWAIT_TX 131 
 int DEV_STATE_STOPPED ; 
#define  DEV_STATE_STOPWAIT_RX 130 
#define  DEV_STATE_STOPWAIT_RXTX 129 
#define  DEV_STATE_STOPWAIT_TX 128 
 scalar_t__ FUNC1 (struct ctcm_priv*) ; 
 int /*<<< orphan*/  MPC_CHANNEL_REMOVE ; 
 int /*<<< orphan*/  SETUP ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(fsm_instance *fi, int event, void *arg)
{

	struct net_device *dev = arg;
	struct ctcm_priv *priv = dev->ml_priv;

	FUNC0(SETUP, dev, "");

	switch (FUNC2(fi)) {
	case DEV_STATE_RUNNING:
		if (event == DEV_EVENT_TXDOWN)
			FUNC3(fi, DEV_STATE_STARTWAIT_TX);
		else
			FUNC3(fi, DEV_STATE_STARTWAIT_RX);
		break;
	case DEV_STATE_STARTWAIT_RX:
		if (event == DEV_EVENT_TXDOWN)
			FUNC3(fi, DEV_STATE_STARTWAIT_RXTX);
		break;
	case DEV_STATE_STARTWAIT_TX:
		if (event == DEV_EVENT_RXDOWN)
			FUNC3(fi, DEV_STATE_STARTWAIT_RXTX);
		break;
	case DEV_STATE_STOPWAIT_RXTX:
		if (event == DEV_EVENT_TXDOWN)
			FUNC3(fi, DEV_STATE_STOPWAIT_RX);
		else
			FUNC3(fi, DEV_STATE_STOPWAIT_TX);
		break;
	case DEV_STATE_STOPWAIT_RX:
		if (event == DEV_EVENT_RXDOWN)
			FUNC3(fi, DEV_STATE_STOPPED);
		break;
	case DEV_STATE_STOPWAIT_TX:
		if (event == DEV_EVENT_TXDOWN)
			FUNC3(fi, DEV_STATE_STOPPED);
		break;
	}
	if (FUNC1(priv)) {
		if (event == DEV_EVENT_RXDOWN)
			FUNC4(priv->channel[CTCM_READ],
				CTCM_READ, MPC_CHANNEL_REMOVE);
		else
			FUNC4(priv->channel[CTCM_WRITE],
				CTCM_WRITE, MPC_CHANNEL_REMOVE);
	}
}