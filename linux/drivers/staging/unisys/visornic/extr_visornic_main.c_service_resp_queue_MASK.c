#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  got_enbdisack; int /*<<< orphan*/  xmit_fail; int /*<<< orphan*/  got_xmit_done; int /*<<< orphan*/  got_rcv; } ;
struct visornic_devdata {int enab_dis_acked; int server_down; int server_change_state; int enabled; int /*<<< orphan*/  priv_lock; struct net_device* netdev; TYPE_3__ chstat; int /*<<< orphan*/  xmitbufhead; int /*<<< orphan*/  flow_control_lower_hits; int /*<<< orphan*/  lower_threshold_net_xmits; TYPE_1__* dev; } ;
struct TYPE_9__ {int enable; scalar_t__ context; } ;
struct TYPE_7__ {int /*<<< orphan*/  xmt_done_result; } ;
struct TYPE_10__ {int type; TYPE_4__ enbdis; scalar_t__ buf; TYPE_2__ xmtdone; } ;
struct uiscmdrsp {TYPE_5__ net; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  visorchannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCHAN_FROM_IOPART ; 
#define  NET_CONNECT_STATUS 131 
#define  NET_RCV 130 
#define  NET_RCV_ENBDIS_ACK 129 
#define  NET_XMIT_DONE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uiscmdrsp*) ; 
 int FUNC10 (struct uiscmdrsp*) ; 
 int /*<<< orphan*/  FUNC11 (struct visornic_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct uiscmdrsp *cmdrsp,
			       struct visornic_devdata *devdata,
			       int *rx_work_done, int budget)
{
	unsigned long flags;
	struct net_device *netdev;

	while (*rx_work_done < budget) {
		/* TODO: CLIENT ACQUIRE -- Don't really need this at the
		 * moment
		 */
		/* queue empty */
		if (FUNC9(devdata->dev->visorchannel,
					      IOCHAN_FROM_IOPART,
					      cmdrsp))
			break;

		switch (cmdrsp->net.type) {
		case NET_RCV:
			devdata->chstat.got_rcv++;
			/* process incoming packet */
			*rx_work_done += FUNC10(cmdrsp);
			break;
		case NET_XMIT_DONE:
			FUNC7(&devdata->priv_lock, flags);
			devdata->chstat.got_xmit_done++;
			if (cmdrsp->net.xmtdone.xmt_done_result)
				devdata->chstat.xmit_fail++;
			/* only call queue wake if we stopped it */
			netdev = ((struct sk_buff *)cmdrsp->net.buf)->dev;
			/* ASSERT netdev == vnicinfo->netdev; */
			if (netdev == devdata->netdev &&
			    FUNC3(netdev)) {
				/* check if we have crossed the lower watermark
				 * for netif_wake_queue()
				 */
				if (FUNC11
				    (devdata,
				     devdata->lower_threshold_net_xmits)) {
					/* enough NET_XMITs completed
					 * so can restart netif queue
					 */
					FUNC5(netdev);
					devdata->flow_control_lower_hits++;
				}
			}
			FUNC6(cmdrsp->net.buf, &devdata->xmitbufhead);
			FUNC8(&devdata->priv_lock, flags);
			FUNC0(cmdrsp->net.buf);
			break;
		case NET_RCV_ENBDIS_ACK:
			devdata->chstat.got_enbdisack++;
			netdev = (struct net_device *)
			cmdrsp->net.enbdis.context;
			FUNC7(&devdata->priv_lock, flags);
			devdata->enab_dis_acked = 1;
			FUNC8(&devdata->priv_lock, flags);

			if (devdata->server_down &&
			    devdata->server_change_state) {
				/* Inform Linux that the link is up */
				devdata->server_down = false;
				devdata->server_change_state = false;
				FUNC5(netdev);
				FUNC2(netdev);
			}
			break;
		case NET_CONNECT_STATUS:
			netdev = devdata->netdev;
			if (cmdrsp->net.enbdis.enable == 1) {
				FUNC7(&devdata->priv_lock, flags);
				devdata->enabled = cmdrsp->net.enbdis.enable;
				FUNC8(&devdata->priv_lock,
						       flags);
				FUNC5(netdev);
				FUNC2(netdev);
			} else {
				FUNC4(netdev);
				FUNC1(netdev);
				FUNC7(&devdata->priv_lock, flags);
				devdata->enabled = cmdrsp->net.enbdis.enable;
				FUNC8(&devdata->priv_lock,
						       flags);
			}
			break;
		default:
			break;
		}
		/* cmdrsp is now available for reuse  */
	}
}