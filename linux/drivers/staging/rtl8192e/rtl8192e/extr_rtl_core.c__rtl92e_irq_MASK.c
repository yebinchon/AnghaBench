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
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  txvookint; int /*<<< orphan*/  txviokint; int /*<<< orphan*/  txbeokint; int /*<<< orphan*/  txbkokint; int /*<<< orphan*/  txoverflow; int /*<<< orphan*/  rxoverflow; int /*<<< orphan*/  rxrdu; int /*<<< orphan*/  rxint; int /*<<< orphan*/  txcmdpktokint; int /*<<< orphan*/  txmanageokint; int /*<<< orphan*/  txbeaconerr; int /*<<< orphan*/  txbeaconokint; int /*<<< orphan*/  ints; int /*<<< orphan*/  shints; } ;
struct TYPE_7__ {int /*<<< orphan*/  nIMR_ROK; } ;
struct r8192_priv {scalar_t__ irq_enabled; int /*<<< orphan*/  irq_th_lock; TYPE_5__* rtllib; TYPE_3__ stats; int /*<<< orphan*/  irq_rx_tasklet; int /*<<< orphan*/  irq_prepare_beacon_tasklet; TYPE_2__ InterruptLog; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_9__ {int /*<<< orphan*/  NumTxOkInPeriod; } ;
struct TYPE_10__ {TYPE_4__ LinkDetectInfo; scalar_t__ ack_tx_to_ieee; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* interrupt_recognized ) (struct net_device*,int*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BE_QUEUE ; 
 int /*<<< orphan*/  BK_QUEUE ; 
 int /*<<< orphan*/  COMP_INTR ; 
 int /*<<< orphan*/  HIGH_QUEUE ; 
 int IMR_BDOK ; 
 int IMR_BEDOK ; 
 int IMR_BKDOK ; 
 int IMR_BcnInt ; 
 int IMR_COMDOK ; 
 int IMR_HIGHDOK ; 
 int IMR_MGNTDOK ; 
 int IMR_RDU ; 
 int IMR_ROK ; 
 int IMR_RXFOVW ; 
 int IMR_TBDER ; 
 int IMR_TBDOK ; 
 int IMR_TXFOVW ; 
 int IMR_VIDOK ; 
 int IMR_VODOK ; 
 int /*<<< orphan*/  INTA_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MGNT_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TXCMD_QUEUE ; 
 int /*<<< orphan*/  VI_QUEUE ; 
 int /*<<< orphan*/  VO_QUEUE ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *netdev)
{
	struct net_device *dev = netdev;
	struct r8192_priv *priv = FUNC6(dev);
	unsigned long flags;
	u32 inta;
	u32 intb;

	intb = 0;

	if (priv->irq_enabled == 0)
		goto done;

	FUNC8(&priv->irq_th_lock, flags);

	priv->ops->interrupt_recognized(dev, &inta, &intb);
	priv->stats.shints++;

	if (!inta) {
		FUNC9(&priv->irq_th_lock, flags);
		goto done;
	}

	if (inta == 0xffff) {
		FUNC9(&priv->irq_th_lock, flags);
		goto done;
	}

	priv->stats.ints++;

	if (!FUNC3(dev)) {
		FUNC9(&priv->irq_th_lock, flags);
		goto done;
	}

	if (inta & IMR_TBDOK) {
		FUNC0(COMP_INTR, "beacon ok interrupt!\n");
		priv->stats.txbeaconokint++;
	}

	if (inta & IMR_TBDER) {
		FUNC0(COMP_INTR, "beacon ok interrupt!\n");
		priv->stats.txbeaconerr++;
	}

	if (inta & IMR_BDOK)
		FUNC0(COMP_INTR, "beacon interrupt!\n");

	if (inta  & IMR_MGNTDOK) {
		FUNC0(COMP_INTR, "Manage ok interrupt!\n");
		priv->stats.txmanageokint++;
		FUNC2(dev, MGNT_QUEUE);
		FUNC9(&priv->irq_th_lock, flags);
		if (priv->rtllib->ack_tx_to_ieee) {
			if (FUNC1(dev)) {
				priv->rtllib->ack_tx_to_ieee = 0;
				FUNC7(priv->rtllib, 1);
			}
		}
		FUNC8(&priv->irq_th_lock, flags);
	}

	if (inta & IMR_COMDOK) {
		priv->stats.txcmdpktokint++;
		FUNC2(dev, TXCMD_QUEUE);
	}

	if (inta & IMR_HIGHDOK)
		FUNC2(dev, HIGH_QUEUE);

	if (inta & IMR_ROK) {
		priv->stats.rxint++;
		priv->InterruptLog.nIMR_ROK++;
		FUNC11(&priv->irq_rx_tasklet);
	}

	if (inta & IMR_BcnInt) {
		FUNC0(COMP_INTR, "prepare beacon for interrupt!\n");
		FUNC11(&priv->irq_prepare_beacon_tasklet);
	}

	if (inta & IMR_RDU) {
		FUNC0(COMP_INTR, "rx descriptor unavailable!\n");
		priv->stats.rxrdu++;
		FUNC5(dev, INTA_MASK,
			      FUNC4(dev, INTA_MASK) & ~IMR_RDU);
		FUNC11(&priv->irq_rx_tasklet);
	}

	if (inta & IMR_RXFOVW) {
		FUNC0(COMP_INTR, "rx overflow !\n");
		priv->stats.rxoverflow++;
		FUNC11(&priv->irq_rx_tasklet);
	}

	if (inta & IMR_TXFOVW)
		priv->stats.txoverflow++;

	if (inta & IMR_BKDOK) {
		FUNC0(COMP_INTR, "BK Tx OK interrupt!\n");
		priv->stats.txbkokint++;
		priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
		FUNC2(dev, BK_QUEUE);
	}

	if (inta & IMR_BEDOK) {
		FUNC0(COMP_INTR, "BE TX OK interrupt!\n");
		priv->stats.txbeokint++;
		priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
		FUNC2(dev, BE_QUEUE);
	}

	if (inta & IMR_VIDOK) {
		FUNC0(COMP_INTR, "VI TX OK interrupt!\n");
		priv->stats.txviokint++;
		priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
		FUNC2(dev, VI_QUEUE);
	}

	if (inta & IMR_VODOK) {
		priv->stats.txvookint++;
		FUNC0(COMP_INTR, "Vo TX OK interrupt!\n");
		priv->rtllib->LinkDetectInfo.NumTxOkInPeriod++;
		FUNC2(dev, VO_QUEUE);
	}

	FUNC9(&priv->irq_th_lock, flags);

done:

	return IRQ_HANDLED;
}