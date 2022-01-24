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
struct usb_endpoint_descriptor {int dummy; } ;
struct urb {unsigned int transfer_buffer_length; unsigned int actual_length; unsigned int number_of_packets; int /*<<< orphan*/  error_count; int /*<<< orphan*/  start_frame; int /*<<< orphan*/  interval; int /*<<< orphan*/  transfer_flags; TYPE_3__* dev; TYPE_1__* ep; } ;
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct mon_reader_bin {int b_size; int /*<<< orphan*/  b_wait; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  cnt_lost; scalar_t__ mmap_active; } ;
struct mon_bin_isodesc {int dummy; } ;
struct TYPE_9__ {unsigned int numdesc; int /*<<< orphan*/  error_count; } ;
struct TYPE_10__ {int /*<<< orphan*/  setup; TYPE_4__ iso; } ;
struct mon_bin_hdr {char type; unsigned char epnum; unsigned long id; int ts_usec; int status; unsigned int len_urb; unsigned int len_cap; char flag_setup; unsigned int ndesc; char flag_data; TYPE_5__ s; int /*<<< orphan*/  start_frame; int /*<<< orphan*/  interval; int /*<<< orphan*/  xfer_flags; int /*<<< orphan*/  ts_sec; int /*<<< orphan*/  busnum; int /*<<< orphan*/  devnum; int /*<<< orphan*/  xfer_type; } ;
struct TYPE_8__ {TYPE_2__* bus; int /*<<< orphan*/  devnum; } ;
struct TYPE_7__ {int /*<<< orphan*/  busnum; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 unsigned int ISODESC_MAX ; 
 struct mon_bin_hdr* FUNC0 (struct mon_reader_bin*,unsigned int) ; 
 int NSEC_PER_USEC ; 
 int PKT_ALIGN ; 
 int PKT_SIZE ; 
 unsigned char USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (struct mon_bin_hdr*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct mon_reader_bin*,struct urb*,unsigned int) ; 
 unsigned int FUNC4 (struct mon_reader_bin*,unsigned int,struct urb*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mon_reader_bin*,unsigned int,struct urb*,char,unsigned int) ; 
 char FUNC6 (int /*<<< orphan*/ ,struct urb*,char) ; 
 unsigned int FUNC7 (struct mon_reader_bin*,int) ; 
 unsigned int FUNC8 (struct mon_reader_bin*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mon_reader_bin*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC12 (struct usb_endpoint_descriptor const*) ; 
 size_t FUNC13 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC16 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC17 (struct urb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xfer_to_pipe ; 

__attribute__((used)) static void FUNC19(struct mon_reader_bin *rp, struct urb *urb,
    char ev_type, int status)
{
	const struct usb_endpoint_descriptor *epd = &urb->ep->desc;
	struct timespec64 ts;
	unsigned long flags;
	unsigned int urb_length;
	unsigned int offset;
	unsigned int length;
	unsigned int delta;
	unsigned int ndesc, lendesc;
	unsigned char dir;
	struct mon_bin_hdr *ep;
	char data_tag = 0;

	FUNC1(&ts);

	FUNC10(&rp->b_lock, flags);

	/*
	 * Find the maximum allowable length, then allocate space.
	 */
	urb_length = (ev_type == 'S') ?
	    urb->transfer_buffer_length : urb->actual_length;
	length = urb_length;

	if (FUNC16(epd)) {
		if (urb->number_of_packets < 0) {
			ndesc = 0;
		} else if (urb->number_of_packets >= ISODESC_MAX) {
			ndesc = ISODESC_MAX;
		} else {
			ndesc = urb->number_of_packets;
		}
		if (ev_type == 'C' && FUNC17(urb))
			length = FUNC3(rp, urb, ndesc);
	} else {
		ndesc = 0;
	}
	lendesc = ndesc*sizeof(struct mon_bin_isodesc);

	/* not an issue unless there's a subtle bug in a HCD somewhere */
	if (length >= urb->transfer_buffer_length)
		length = urb->transfer_buffer_length;

	if (length >= rp->b_size/5)
		length = rp->b_size/5;

	if (FUNC17(urb)) {
		if (ev_type == 'S') {
			length = 0;
			data_tag = '<';
		}
		/* Cannot rely on endpoint number in case of control ep.0 */
		dir = USB_DIR_IN;
	} else {
		if (ev_type == 'C') {
			length = 0;
			data_tag = '>';
		}
		dir = 0;
	}

	if (rp->mmap_active) {
		offset = FUNC8(rp,
						 length + PKT_SIZE + lendesc);
	} else {
		offset = FUNC7(rp, length + PKT_SIZE + lendesc);
	}
	if (offset == ~0) {
		rp->cnt_lost++;
		FUNC11(&rp->b_lock, flags);
		return;
	}

	ep = FUNC0(rp, offset);
	if ((offset += PKT_SIZE) >= rp->b_size) offset = 0;

	/*
	 * Fill the allocated area.
	 */
	FUNC2(ep, 0, PKT_SIZE);
	ep->type = ev_type;
	ep->xfer_type = xfer_to_pipe[FUNC13(epd)];
	ep->epnum = dir | FUNC12(epd);
	ep->devnum = urb->dev->devnum;
	ep->busnum = urb->dev->bus->busnum;
	ep->id = (unsigned long) urb;
	ep->ts_sec = ts.tv_sec;
	ep->ts_usec = ts.tv_nsec / NSEC_PER_USEC;
	ep->status = status;
	ep->len_urb = urb_length;
	ep->len_cap = length + lendesc;
	ep->xfer_flags = urb->transfer_flags;

	if (FUNC15(epd)) {
		ep->interval = urb->interval;
	} else if (FUNC16(epd)) {
		ep->interval = urb->interval;
		ep->start_frame = urb->start_frame;
		ep->s.iso.error_count = urb->error_count;
		ep->s.iso.numdesc = urb->number_of_packets;
	}

	if (FUNC14(epd) && ev_type == 'S') {
		ep->flag_setup = FUNC6(ep->s.setup, urb, ev_type);
	} else {
		ep->flag_setup = '-';
	}

	if (ndesc != 0) {
		ep->ndesc = ndesc;
		FUNC5(rp, offset, urb, ev_type, ndesc);
		if ((offset += lendesc) >= rp->b_size)
			offset -= rp->b_size;
	}

	if (length != 0) {
		length = FUNC4(rp, offset, urb, length,
				&ep->flag_data);
		if (length > 0) {
			delta = (ep->len_cap + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
			ep->len_cap -= length;
			delta -= (ep->len_cap + PKT_ALIGN-1) & ~(PKT_ALIGN-1);
			FUNC9(rp, delta);
		}
	} else {
		ep->flag_data = data_tag;
	}

	FUNC11(&rp->b_lock, flags);

	FUNC18(&rp->b_wait);
}