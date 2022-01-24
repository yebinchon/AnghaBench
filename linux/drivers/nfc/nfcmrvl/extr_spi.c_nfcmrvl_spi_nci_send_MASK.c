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
struct sk_buff {int dummy; } ;
struct nfcmrvl_spi_drv_data {int /*<<< orphan*/  handshake_completion; int /*<<< orphan*/  nci_spi; int /*<<< orphan*/  flags; } ;
struct nfcmrvl_private {int /*<<< orphan*/  dev; struct nfcmrvl_spi_drv_data* drv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_WAIT_HANDSHAKE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct nfcmrvl_private *priv,
				struct sk_buff *skb)
{
	struct nfcmrvl_spi_drv_data *drv_data = priv->drv_data;
	int err;

	/* Reinit completion for slave handshake */
	FUNC2(&drv_data->handshake_completion);
	FUNC3(SPI_WAIT_HANDSHAKE, &drv_data->flags);

	/*
	 * Append a dummy byte at the end of SPI frame. This is due to a
	 * specific DMA implementation in the controller
	 */
	FUNC4(skb, 1);

	/* Send the SPI packet */
	err = FUNC0(drv_data->nci_spi, &drv_data->handshake_completion,
			   skb);
	if (err)
		FUNC1(priv->dev, "spi_send failed %d", err);

	return err;
}