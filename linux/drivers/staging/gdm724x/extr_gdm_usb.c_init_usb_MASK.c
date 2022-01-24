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
struct usb_tx_sdu {int /*<<< orphan*/  list; } ;
struct usb_rx {int /*<<< orphan*/  free_list; } ;
struct tx_cxt {scalar_t__ avail_count; int /*<<< orphan*/  free_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  hci_list; int /*<<< orphan*/  sdu_list; } ;
struct rx_cxt {scalar_t__ avail_count; int /*<<< orphan*/  free_list; int /*<<< orphan*/  to_host_lock; int /*<<< orphan*/  submit_lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  to_host_list; int /*<<< orphan*/  rx_submit_list; } ;
struct lte_udev {int send_complete; int /*<<< orphan*/  work_rx; int /*<<< orphan*/  work_tx; int /*<<< orphan*/ * rx_cb; int /*<<< orphan*/  usb_state; scalar_t__ request_mac_addr; scalar_t__ tx_stop; struct rx_cxt rx; struct tx_cxt tx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_NUM_SDU_BUF ; 
 int MAX_RX_SUBMIT_COUNT ; 
 int /*<<< orphan*/  PM_NORMAL ; 
 struct usb_rx* FUNC2 () ; 
 struct usb_tx_sdu* FUNC3 () ; 
 int /*<<< orphan*/  do_rx ; 
 int /*<<< orphan*/  do_tx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lte_udev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct lte_udev *udev)
{
	int ret = 0;
	int i;
	struct tx_cxt *tx = &udev->tx;
	struct rx_cxt *rx = &udev->rx;
	struct usb_tx_sdu *t_sdu = NULL;
	struct usb_rx *r = NULL;

	udev->send_complete = 1;
	udev->tx_stop = 0;
	udev->request_mac_addr = 0;
	udev->usb_state = PM_NORMAL;

	FUNC1(&tx->sdu_list);
	FUNC1(&tx->hci_list);
	FUNC1(&tx->free_list);
	FUNC1(&rx->rx_submit_list);
	FUNC1(&rx->free_list);
	FUNC1(&rx->to_host_list);
	FUNC6(&tx->lock);
	FUNC6(&rx->rx_lock);
	FUNC6(&rx->submit_lock);
	FUNC6(&rx->to_host_lock);

	tx->avail_count = 0;
	rx->avail_count = 0;

	udev->rx_cb = NULL;

	for (i = 0; i < MAX_NUM_SDU_BUF; i++) {
		t_sdu = FUNC3();
		if (!t_sdu) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC4(&t_sdu->list, &tx->free_list);
		tx->avail_count++;
	}

	for (i = 0; i < MAX_RX_SUBMIT_COUNT * 2; i++) {
		r = FUNC2();
		if (!r) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC4(&r->free_list, &rx->free_list);
		rx->avail_count++;
	}
	FUNC0(&udev->work_tx, do_tx);
	FUNC0(&udev->work_rx, do_rx);
	return 0;
fail:
	FUNC5(udev);
	return ret;
}