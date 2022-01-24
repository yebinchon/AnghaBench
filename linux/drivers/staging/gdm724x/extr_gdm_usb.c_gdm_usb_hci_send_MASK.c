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
struct usb_tx {void (* callback ) (void*) ;int len; int /*<<< orphan*/  list; scalar_t__ is_sdu; struct tx_cxt* tx; void* cb_data; int /*<<< orphan*/  buf; } ;
struct tx_cxt {int /*<<< orphan*/  lock; int /*<<< orphan*/  hci_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct lte_udev {TYPE_1__ work_tx; int /*<<< orphan*/  usbdev; struct tx_cxt tx; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct usb_tx* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(void *priv_dev, void *data, int len,
			    void (*cb)(void *data), void *cb_data)
{
	struct lte_udev *udev = priv_dev;
	struct tx_cxt *tx = &udev->tx;
	struct usb_tx *t;
	unsigned long flags;

	if (!udev->usbdev) {
		FUNC3("hci send - invalid device\n");
		return -ENODEV;
	}

	t = FUNC0(len);
	if (!t) {
		FUNC3("hci_send - out of memory\n");
		return -ENOMEM;
	}

	FUNC2(t->buf, data, len);
	t->callback = cb;
	t->cb_data = cb_data;
	t->len = len;
	t->tx = tx;
	t->is_sdu = 0;

	FUNC5(&tx->lock, flags);
	FUNC1(&t->list, &tx->hci_list);
	FUNC4(&udev->work_tx.work);
	FUNC6(&tx->lock, flags);

	return 0;
}