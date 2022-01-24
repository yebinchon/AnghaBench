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
typedef  int u32 ;
struct usb_device {int dummy; } ;
struct mux_tx {int len; void (* callback ) (void*) ;int /*<<< orphan*/  urb; scalar_t__ buf; void* cb_data; } ;
struct mux_pkt_header {int /*<<< orphan*/  packet_type; void* payload_size; void* seq_num; void* start_flag; } ;
struct mux_dev {scalar_t__ usb_state; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  intf; struct usb_device* usbdev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MUX_HEADER_SIZE ; 
 scalar_t__ PM_SUSPEND ; 
 int START_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 struct mux_tx* FUNC3 (int) ; 
 int /*<<< orphan*/  gdm_mux_send_complete ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * packet_type ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct mux_tx*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void *priv_dev, void *data, int len, int tty_index,
			void (*cb)(void *data), void *cb_data)
{
	struct mux_dev *mux_dev = priv_dev;
	struct usb_device *usbdev = mux_dev->usbdev;
	struct mux_pkt_header *mux_header;
	struct mux_tx *t = NULL;
	static u32 seq_num = 1;
	int total_len;
	int ret;
	unsigned long flags;

	if (mux_dev->usb_state == PM_SUSPEND) {
		ret = FUNC9(mux_dev->intf);
		if (!ret)
			FUNC10(mux_dev->intf);
	}

	FUNC7(&mux_dev->write_lock, flags);

	total_len = FUNC0(MUX_HEADER_SIZE + len, 4);

	t = FUNC3(total_len);
	if (!t) {
		FUNC6("alloc_mux_tx fail\n");
		FUNC8(&mux_dev->write_lock, flags);
		return -ENOMEM;
	}

	mux_header = (struct mux_pkt_header *)t->buf;
	mux_header->start_flag = FUNC2(START_FLAG);
	mux_header->seq_num = FUNC2(seq_num++);
	mux_header->payload_size = FUNC2((u32)len);
	mux_header->packet_type = FUNC1(packet_type[tty_index]);

	FUNC4(t->buf + MUX_HEADER_SIZE, data, len);
	FUNC5(t->buf + MUX_HEADER_SIZE + len, 0,
	       total_len - MUX_HEADER_SIZE - len);

	t->len = total_len;
	t->callback = cb;
	t->cb_data = cb_data;

	FUNC11(t->urb,
			  usbdev,
			  FUNC13(usbdev, 5),
			  t->buf,
			  total_len,
			  gdm_mux_send_complete,
			  t);

	ret = FUNC14(t->urb, GFP_ATOMIC);

	FUNC8(&mux_dev->write_lock, flags);

	if (ret)
		FUNC6("usb_submit_urb Error: %d\n", ret);

	FUNC12(usbdev);

	return ret;
}