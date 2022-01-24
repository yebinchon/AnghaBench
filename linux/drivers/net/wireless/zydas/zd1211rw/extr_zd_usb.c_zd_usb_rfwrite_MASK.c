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
typedef  unsigned long u8 ;
typedef  unsigned long u32 ;
typedef  unsigned long u16 ;
struct zd_usb {scalar_t__ req_buf; } ;
struct usb_req_rfwrite {void** bit_values; void* bits; void* value; void* id; } ;
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 unsigned long RF_CLK ; 
 unsigned long RF_DATA ; 
 unsigned long RF_IF_LE ; 
 unsigned long USB_MAX_RFWRITE_BIT_COUNT ; 
 unsigned long USB_MIN_RFWRITE_BIT_COUNT ; 
 unsigned long USB_REQ_WRITE_RF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZD_CR203 ; 
 void* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_device*,struct usb_req_rfwrite*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct zd_usb*) ; 
 int FUNC9 (struct zd_usb*,unsigned long*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (struct zd_usb*) ; 
 struct usb_device* FUNC11 (struct zd_usb*) ; 

int FUNC12(struct zd_usb *usb, u32 value, u8 bits)
{
	int r;
	struct usb_device *udev;
	struct usb_req_rfwrite *req = NULL;
	int i, req_len, actual_req_len;
	u16 bit_value_template;

	if (FUNC5()) {
		FUNC4(FUNC8(usb),
			"error: io in atomic context not supported\n");
		return -EWOULDBLOCK;
	}
	if (bits < USB_MIN_RFWRITE_BIT_COUNT) {
		FUNC4(FUNC8(usb),
			"error: bits %d are smaller than"
			" USB_MIN_RFWRITE_BIT_COUNT %d\n",
			bits, USB_MIN_RFWRITE_BIT_COUNT);
		return -EINVAL;
	}
	if (bits > USB_MAX_RFWRITE_BIT_COUNT) {
		FUNC4(FUNC8(usb),
			"error: bits %d exceed USB_MAX_RFWRITE_BIT_COUNT %d\n",
			bits, USB_MAX_RFWRITE_BIT_COUNT);
		return -EINVAL;
	}
#ifdef DEBUG
	if (value & (~0UL << bits)) {
		dev_dbg_f(zd_usb_dev(usb),
			"error: value %#09x has bits >= %d set\n",
			value, bits);
		return -EINVAL;
	}
#endif /* DEBUG */

	FUNC4(FUNC8(usb), "value %#09x bits %d\n", value, bits);

	r = FUNC9(usb, &bit_value_template, ZD_CR203);
	if (r) {
		FUNC4(FUNC8(usb),
			"error %d: Couldn't read ZD_CR203\n", r);
		return r;
	}
	bit_value_template &= ~(RF_IF_LE|RF_CLK|RF_DATA);

	FUNC2(FUNC6(&FUNC10(usb)->mutex));
	FUNC1(sizeof(struct usb_req_rfwrite) +
		     USB_MAX_RFWRITE_BIT_COUNT * sizeof(__le16) >
		     sizeof(usb->req_buf));
	FUNC0(sizeof(struct usb_req_rfwrite) + bits * sizeof(__le16) >
	       sizeof(usb->req_buf));

	req_len = sizeof(struct usb_req_rfwrite) + bits * sizeof(__le16);
	req = (void *)usb->req_buf;

	req->id = FUNC3(USB_REQ_WRITE_RF);
	/* 1: 3683a, but not used in ZYDAS driver */
	req->value = FUNC3(2);
	req->bits = FUNC3(bits);

	for (i = 0; i < bits; i++) {
		u16 bv = bit_value_template;
		if (value & (1 << (bits-1-i)))
			bv |= RF_DATA;
		req->bit_values[i] = FUNC3(bv);
	}

	udev = FUNC11(usb);
	r = FUNC7(udev, req, req_len, &actual_req_len, 50 /*ms*/);
	if (r) {
		FUNC4(FUNC8(usb),
			"error in zd_ep_regs_out_msg(). Error number %d\n", r);
		goto out;
	}
	if (req_len != actual_req_len) {
		FUNC4(FUNC8(usb), "error in zd_ep_regs_out_msg()"
			" req_len %d != actual_req_len %d\n",
			req_len, actual_req_len);
		r = -EIO;
		goto out;
	}

	/* FALL-THROUGH with r == 0 */
out:
	return r;
}