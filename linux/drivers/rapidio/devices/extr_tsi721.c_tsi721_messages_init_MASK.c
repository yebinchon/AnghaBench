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
struct tsi721_device {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TSI721_IBDMAC_INT_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int TSI721_IMSG_CHNUM ; 
 scalar_t__ TSI721_RETRY_GEN_CNT ; 
 scalar_t__ TSI721_RETRY_RX_CNT ; 
 scalar_t__ TSI721_RQRPTO ; 
 int /*<<< orphan*/  TSI721_RQRPTO_VAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  TSI721_SMSG_ECC_COR_LOG_MASK ; 
 scalar_t__ TSI721_SMSG_ECC_LOG ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  TSI721_SMSG_ECC_NCOR_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct tsi721_device *priv)
{
	int	ch;

	FUNC4(0, priv->regs + TSI721_SMSG_ECC_LOG);
	FUNC4(0, priv->regs + TSI721_RETRY_GEN_CNT);
	FUNC4(0, priv->regs + TSI721_RETRY_RX_CNT);

	/* Set SRIO Message Request/Response Timeout */
	FUNC4(TSI721_RQRPTO_VAL, priv->regs + TSI721_RQRPTO);

	/* Initialize Inbound Messaging Engine Registers */
	for (ch = 0; ch < TSI721_IMSG_CHNUM; ch++) {
		/* Clear interrupt bits */
		FUNC4(TSI721_IBDMAC_INT_MASK,
			priv->regs + FUNC0(ch));
		/* Clear Status */
		FUNC4(0, priv->regs + FUNC1(ch));

		FUNC4(TSI721_SMSG_ECC_COR_LOG_MASK,
				priv->regs + FUNC2(ch));
		FUNC4(TSI721_SMSG_ECC_NCOR_MASK,
				priv->regs + FUNC3(ch));
	}

	return 0;
}