#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_request {int /*<<< orphan*/ * buf; void* complete; scalar_t__ length; } ;
struct usb_function {int dummy; } ;
struct f_midi {unsigned int ms_id; unsigned int qlen; TYPE_1__* out_ep; int /*<<< orphan*/  buflen; int /*<<< orphan*/  in_req_fifo; TYPE_1__* in_ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct f_midi*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* f_midi_complete ; 
 int FUNC1 (struct f_midi*,struct usb_function*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct usb_request*) ; 
 struct f_midi* FUNC3 (struct usb_function*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_request*) ; 
 struct usb_request* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_midi *midi = FUNC3(f);
	unsigned i;
	int err;

	/* we only set alt for MIDIStreaming interface */
	if (intf != midi->ms_id)
		return 0;

	err = FUNC1(midi, f, midi->in_ep);
	if (err)
		return err;

	err = FUNC1(midi, f, midi->out_ep);
	if (err)
		return err;

	/* pre-allocate write usb requests to use on f_midi_transmit. */
	while (FUNC4(&midi->in_req_fifo)) {
		struct usb_request *req =
			FUNC6(midi->in_ep, midi->buflen);

		if (req == NULL)
			return -ENOMEM;

		req->length = 0;
		req->complete = f_midi_complete;

		FUNC5(&midi->in_req_fifo, req);
	}

	/* allocate a bunch of read buffers and queue them all at once. */
	for (i = 0; i < midi->qlen && err == 0; i++) {
		struct usb_request *req =
			FUNC6(midi->out_ep, midi->buflen);

		if (req == NULL)
			return -ENOMEM;

		req->complete = f_midi_complete;
		err = FUNC7(midi->out_ep, req, GFP_ATOMIC);
		if (err) {
			FUNC0(midi, "%s: couldn't enqueue request: %d\n",
				    midi->out_ep->name, err);
			if (req->buf != NULL)
				FUNC2(midi->out_ep, req);
			return err;
		}
	}

	return 0;
}