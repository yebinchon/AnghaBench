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
typedef  int u16 ;
struct usb_tx_sdu {int len; void (* callback ) (void*) ;int /*<<< orphan*/  list; void* cb_data; scalar_t__ buf; } ;
struct tx_cxt {int /*<<< orphan*/  lock; int /*<<< orphan*/  sdu_list; } ;
struct sdu {void* nic_type; void* bearer_ID; void* dft_eps_ID; void* len; int /*<<< orphan*/  data; void* cmd_evt; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct lte_udev {TYPE_1__ work_tx; int /*<<< orphan*/  gdm_ed; int /*<<< orphan*/  usbdev; struct tx_cxt tx; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int HCI_HEADER_SIZE ; 
 int LTE_TX_SDU ; 
 int NIC_TYPE_ARP ; 
 int SDU_PARAM_LEN ; 
 int TX_NO_BUFFER ; 
 int TX_NO_DEV ; 
 int TX_NO_SPC ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct usb_tx_sdu* FUNC2 (struct tx_cxt*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(void *priv_dev, void *data, int len,
			    unsigned int dft_eps_ID, unsigned int eps_ID,
			    void (*cb)(void *data), void *cb_data,
			    int dev_idx, int nic_type)
{
	struct lte_udev *udev = priv_dev;
	struct tx_cxt *tx = &udev->tx;
	struct usb_tx_sdu *t_sdu;
	struct sdu *sdu = NULL;
	unsigned long flags;
	int no_spc = 0;
	u16 send_len;

	if (!udev->usbdev) {
		FUNC5("sdu send - invalid device\n");
		return TX_NO_DEV;
	}

	FUNC7(&tx->lock, flags);
	t_sdu = FUNC2(tx, &no_spc);
	FUNC8(&tx->lock, flags);

	if (!t_sdu) {
		FUNC5("sdu send - free list empty\n");
		return TX_NO_SPC;
	}

	sdu = (struct sdu *)t_sdu->buf;
	sdu->cmd_evt = FUNC0(udev->gdm_ed, LTE_TX_SDU);
	if (nic_type == NIC_TYPE_ARP) {
		send_len = len + SDU_PARAM_LEN;
		FUNC4(sdu->data, data, len);
	} else {
		send_len = len - ETH_HLEN;
		send_len += SDU_PARAM_LEN;
		FUNC4(sdu->data, data + ETH_HLEN, len - ETH_HLEN);
	}

	sdu->len = FUNC0(udev->gdm_ed, send_len);
	sdu->dft_eps_ID = FUNC1(udev->gdm_ed, dft_eps_ID);
	sdu->bearer_ID = FUNC1(udev->gdm_ed, eps_ID);
	sdu->nic_type = FUNC1(udev->gdm_ed, nic_type);

	t_sdu->len = send_len + HCI_HEADER_SIZE;
	t_sdu->callback = cb;
	t_sdu->cb_data = cb_data;

	FUNC7(&tx->lock, flags);
	FUNC3(&t_sdu->list, &tx->sdu_list);
	FUNC6(&udev->work_tx.work);
	FUNC8(&tx->lock, flags);

	if (no_spc)
		return TX_NO_BUFFER;

	return 0;
}