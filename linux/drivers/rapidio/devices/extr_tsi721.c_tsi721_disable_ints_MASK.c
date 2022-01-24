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
 scalar_t__ TSI721_BDMA_INTE ; 
 scalar_t__ TSI721_DEV_CHAN_INTE ; 
 scalar_t__ TSI721_DEV_INTE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ TSI721_DMAC_INTE ; 
 int TSI721_DMA_MAXCH ; 
 scalar_t__ TSI721_I2C_INT_ENABLE ; 
 scalar_t__ FUNC1 (int) ; 
 int TSI721_IMSG_CHNUM ; 
 scalar_t__ FUNC2 (int) ; 
 int TSI721_OMSG_CHNUM ; 
 scalar_t__ TSI721_PC2SR_INTE ; 
 scalar_t__ TSI721_RIO_EM_DEV_INT_EN ; 
 scalar_t__ TSI721_RIO_EM_INT_ENABLE ; 
 scalar_t__ TSI721_SMSG_INTE ; 
 scalar_t__ TSI721_SR2PC_GEN_INTE ; 
 int TSI721_SRIO_MAXCH ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tsi721_device *priv)
{
	int ch;

	/* Disable all device level interrupts */
	FUNC4(0, priv->regs + TSI721_DEV_INTE);

	/* Disable all Device Channel interrupts */
	FUNC4(0, priv->regs + TSI721_DEV_CHAN_INTE);

	/* Disable all Inbound Msg Channel interrupts */
	for (ch = 0; ch < TSI721_IMSG_CHNUM; ch++)
		FUNC4(0, priv->regs + FUNC1(ch));

	/* Disable all Outbound Msg Channel interrupts */
	for (ch = 0; ch < TSI721_OMSG_CHNUM; ch++)
		FUNC4(0, priv->regs + FUNC2(ch));

	/* Disable all general messaging interrupts */
	FUNC4(0, priv->regs + TSI721_SMSG_INTE);

	/* Disable all BDMA Channel interrupts */
	for (ch = 0; ch < TSI721_DMA_MAXCH; ch++)
		FUNC4(0,
			priv->regs + FUNC0(ch) + TSI721_DMAC_INTE);

	/* Disable all general BDMA interrupts */
	FUNC4(0, priv->regs + TSI721_BDMA_INTE);

	/* Disable all SRIO Channel interrupts */
	for (ch = 0; ch < TSI721_SRIO_MAXCH; ch++)
		FUNC4(0, priv->regs + FUNC3(ch));

	/* Disable all general SR2PC interrupts */
	FUNC4(0, priv->regs + TSI721_SR2PC_GEN_INTE);

	/* Disable all PC2SR interrupts */
	FUNC4(0, priv->regs + TSI721_PC2SR_INTE);

	/* Disable all I2C interrupts */
	FUNC4(0, priv->regs + TSI721_I2C_INT_ENABLE);

	/* Disable SRIO MAC interrupts */
	FUNC4(0, priv->regs + TSI721_RIO_EM_INT_ENABLE);
	FUNC4(0, priv->regs + TSI721_RIO_EM_DEV_INT_EN);
}