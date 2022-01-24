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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct registry_priv {int wifi_spec; } ;
struct adapter {TYPE_1__* HalData; struct registry_priv registrypriv; } ;
struct TYPE_2__ {int OutEpQueueSel; } ;

/* Variables and functions */
 int LD_RQPN ; 
 int /*<<< orphan*/  REG_RQPN ; 
 int /*<<< orphan*/  REG_RQPN_NPQ ; 
 int TX_SELE_HQ ; 
 int TX_SELE_LQ ; 
 int TX_SELE_NQ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct adapter *Adapter)
{
	struct registry_priv	*pregistrypriv = &Adapter->registrypriv;
	u32 numHQ	= 0;
	u32 numLQ	= 0;
	u32 numNQ	= 0;
	u32 numPubQ;
	u32 value32;
	u8 value8;
	bool bWiFiConfig = pregistrypriv->wifi_spec;

	if (bWiFiConfig) {
		if (Adapter->HalData->OutEpQueueSel & TX_SELE_HQ)
			numHQ =  0x29;

		if (Adapter->HalData->OutEpQueueSel & TX_SELE_LQ)
			numLQ = 0x1C;

		/*  NOTE: This step shall be proceed before writing REG_RQPN. */
		if (Adapter->HalData->OutEpQueueSel & TX_SELE_NQ)
			numNQ = 0x1C;
		value8 = (u8)FUNC2(numNQ);
		FUNC6(Adapter, REG_RQPN_NPQ, value8);

		numPubQ = 0xA8 - numHQ - numLQ - numNQ;

		/*  TX DMA */
		value32 = FUNC0(numHQ) | FUNC1(numLQ) | FUNC3(numPubQ) | LD_RQPN;
		FUNC5(Adapter, REG_RQPN, value32);
	} else {
		FUNC4(Adapter, REG_RQPN_NPQ, 0x0000);/* Just follow MP Team,??? Georgia 03/28 */
		FUNC4(Adapter, REG_RQPN_NPQ, 0x0d);
		FUNC5(Adapter, REG_RQPN, 0x808E000d);/* reserve 7 page for LPS */
	}
}