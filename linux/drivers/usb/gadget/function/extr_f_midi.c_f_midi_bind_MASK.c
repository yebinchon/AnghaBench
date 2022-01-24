#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_midi_out_jack_descriptor_1 {int bLength; int bNrInputPins; TYPE_1__* pins; scalar_t__ iJack; int /*<<< orphan*/  bJackID; void* bJackType; void* bDescriptorSubtype; void* bDescriptorType; } ;
struct usb_midi_in_jack_descriptor {int bLength; int /*<<< orphan*/  bJackID; scalar_t__ iJack; void* bJackType; void* bDescriptorSubtype; void* bDescriptorType; } ;
struct usb_function {int /*<<< orphan*/  name; void* ss_descriptors; void* hs_descriptors; void* fs_descriptors; } ;
struct usb_descriptor_header {int dummy; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct f_midi {int ms_id; int in_ports; int out_ports; void* out_ep; void* in_ep; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  gadget; } ;
struct TYPE_18__ {int bInterfaceNumber; int /*<<< orphan*/  iInterface; } ;
struct TYPE_17__ {void* wTotalLength; } ;
struct TYPE_16__ {int bNumEmbMIDIJack; void* bLength; int /*<<< orphan*/ * baAssocJackID; } ;
struct TYPE_15__ {int bInterfaceNumber; } ;
struct TYPE_14__ {int bNumEmbMIDIJack; void* bLength; int /*<<< orphan*/ * baAssocJackID; } ;
struct TYPE_13__ {void* wMaxPacketSize; } ;
struct TYPE_12__ {int baSourcePin; int /*<<< orphan*/  baSourceID; } ;
struct TYPE_11__ {int* baInterfaceNr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct usb_string*) ; 
 int MAX_PORTS ; 
 int FUNC3 (struct usb_string*) ; 
 size_t STRING_FUNC_IDX ; 
 void* USB_DT_CS_INTERFACE ; 
 int USB_DT_MIDI_IN_SIZE ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int USB_DT_MS_HEADER_SIZE ; 
 void* USB_MS_EMBEDDED ; 
 void* USB_MS_EXTERNAL ; 
 void* USB_MS_MIDI_IN_JACK ; 
 void* USB_MS_MIDI_OUT_JACK ; 
 TYPE_10__ ac_header_desc ; 
 TYPE_9__ ac_interface_desc ; 
 TYPE_2__ bulk_in_desc ; 
 int /*<<< orphan*/  bulk_in_ss_comp_desc ; 
 TYPE_2__ bulk_out_desc ; 
 int /*<<< orphan*/  bulk_out_ss_comp_desc ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  f_midi_in_tasklet ; 
 int FUNC7 (struct f_midi*) ; 
 int /*<<< orphan*/  FUNC8 (struct f_midi*) ; 
 struct f_midi* FUNC9 (struct usb_function*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct usb_descriptor_header** FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_descriptor_header**) ; 
 int /*<<< orphan*/  midi_string_defs ; 
 int /*<<< orphan*/  midi_strings ; 
 TYPE_6__ ms_header_desc ; 
 TYPE_5__ ms_in_desc ; 
 TYPE_4__ ms_interface_desc ; 
 TYPE_3__ ms_out_desc ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC15 (struct usb_descriptor_header**) ; 
 void* FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_function*) ; 
 struct usb_string* FUNC18 (struct usb_composite_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct usb_configuration*,struct usb_function*) ; 

__attribute__((used)) static int FUNC20(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_descriptor_header **midi_function;
	struct usb_midi_in_jack_descriptor jack_in_ext_desc[MAX_PORTS];
	struct usb_midi_in_jack_descriptor jack_in_emb_desc[MAX_PORTS];
	struct usb_midi_out_jack_descriptor_1 jack_out_ext_desc[MAX_PORTS];
	struct usb_midi_out_jack_descriptor_1 jack_out_emb_desc[MAX_PORTS];
	struct usb_composite_dev *cdev = c->cdev;
	struct f_midi *midi = FUNC9(f);
	struct usb_string *us;
	int status, n, jack = 1, i = 0, endpoint_descriptor_index = 0;

	midi->gadget = cdev->gadget;
	FUNC14(&midi->tasklet, f_midi_in_tasklet, (unsigned long) midi);
	status = FUNC7(midi);
	if (status < 0)
		goto fail_register;

	/* maybe allocate device-global string ID */
	us = FUNC18(c->cdev, midi_strings,
				 FUNC0(midi_string_defs));
	if (FUNC2(us)) {
		status = FUNC3(us);
		goto fail;
	}
	ac_interface_desc.iInterface = us[STRING_FUNC_IDX].id;

	/* We have two interfaces, AudioControl and MIDIStreaming */
	status = FUNC19(c, f);
	if (status < 0)
		goto fail;
	ac_interface_desc.bInterfaceNumber = status;

	status = FUNC19(c, f);
	if (status < 0)
		goto fail;
	ms_interface_desc.bInterfaceNumber = status;
	ac_header_desc.baInterfaceNr[0] = status;
	midi->ms_id = status;

	status = -ENODEV;

	/* allocate instance-specific endpoints */
	midi->in_ep = FUNC16(cdev->gadget, &bulk_in_desc);
	if (!midi->in_ep)
		goto fail;

	midi->out_ep = FUNC16(cdev->gadget, &bulk_out_desc);
	if (!midi->out_ep)
		goto fail;

	/* allocate temporary function list */
	midi_function = FUNC12((MAX_PORTS * 4) + 11, sizeof(*midi_function),
				GFP_KERNEL);
	if (!midi_function) {
		status = -ENOMEM;
		goto fail;
	}

	/*
	 * construct the function's descriptor set. As the number of
	 * input and output MIDI ports is configurable, we have to do
	 * it that way.
	 */

	/* add the headers - these are always the same */
	midi_function[i++] = (struct usb_descriptor_header *) &ac_interface_desc;
	midi_function[i++] = (struct usb_descriptor_header *) &ac_header_desc;
	midi_function[i++] = (struct usb_descriptor_header *) &ms_interface_desc;

	/* calculate the header's wTotalLength */
	n = USB_DT_MS_HEADER_SIZE
		+ (midi->in_ports + midi->out_ports) *
			(USB_DT_MIDI_IN_SIZE + FUNC4(1));
	ms_header_desc.wTotalLength = FUNC6(n);

	midi_function[i++] = (struct usb_descriptor_header *) &ms_header_desc;

	/* configure the external IN jacks, each linked to an embedded OUT jack */
	for (n = 0; n < midi->in_ports; n++) {
		struct usb_midi_in_jack_descriptor *in_ext = &jack_in_ext_desc[n];
		struct usb_midi_out_jack_descriptor_1 *out_emb = &jack_out_emb_desc[n];

		in_ext->bLength			= USB_DT_MIDI_IN_SIZE;
		in_ext->bDescriptorType		= USB_DT_CS_INTERFACE;
		in_ext->bDescriptorSubtype	= USB_MS_MIDI_IN_JACK;
		in_ext->bJackType		= USB_MS_EXTERNAL;
		in_ext->bJackID			= jack++;
		in_ext->iJack			= 0;
		midi_function[i++] = (struct usb_descriptor_header *) in_ext;

		out_emb->bLength		= FUNC4(1);
		out_emb->bDescriptorType	= USB_DT_CS_INTERFACE;
		out_emb->bDescriptorSubtype	= USB_MS_MIDI_OUT_JACK;
		out_emb->bJackType		= USB_MS_EMBEDDED;
		out_emb->bJackID		= jack++;
		out_emb->bNrInputPins		= 1;
		out_emb->pins[0].baSourcePin	= 1;
		out_emb->pins[0].baSourceID	= in_ext->bJackID;
		out_emb->iJack			= 0;
		midi_function[i++] = (struct usb_descriptor_header *) out_emb;

		/* link it to the endpoint */
		ms_in_desc.baAssocJackID[n] = out_emb->bJackID;
	}

	/* configure the external OUT jacks, each linked to an embedded IN jack */
	for (n = 0; n < midi->out_ports; n++) {
		struct usb_midi_in_jack_descriptor *in_emb = &jack_in_emb_desc[n];
		struct usb_midi_out_jack_descriptor_1 *out_ext = &jack_out_ext_desc[n];

		in_emb->bLength			= USB_DT_MIDI_IN_SIZE;
		in_emb->bDescriptorType		= USB_DT_CS_INTERFACE;
		in_emb->bDescriptorSubtype	= USB_MS_MIDI_IN_JACK;
		in_emb->bJackType		= USB_MS_EMBEDDED;
		in_emb->bJackID			= jack++;
		in_emb->iJack			= 0;
		midi_function[i++] = (struct usb_descriptor_header *) in_emb;

		out_ext->bLength =		FUNC4(1);
		out_ext->bDescriptorType =	USB_DT_CS_INTERFACE;
		out_ext->bDescriptorSubtype =	USB_MS_MIDI_OUT_JACK;
		out_ext->bJackType =		USB_MS_EXTERNAL;
		out_ext->bJackID =		jack++;
		out_ext->bNrInputPins =		1;
		out_ext->iJack =		0;
		out_ext->pins[0].baSourceID =	in_emb->bJackID;
		out_ext->pins[0].baSourcePin =	1;
		midi_function[i++] = (struct usb_descriptor_header *) out_ext;

		/* link it to the endpoint */
		ms_out_desc.baAssocJackID[n] = in_emb->bJackID;
	}

	/* configure the endpoint descriptors ... */
	ms_out_desc.bLength = FUNC5(midi->in_ports);
	ms_out_desc.bNumEmbMIDIJack = midi->in_ports;

	ms_in_desc.bLength = FUNC5(midi->out_ports);
	ms_in_desc.bNumEmbMIDIJack = midi->out_ports;

	/* ... and add them to the list */
	endpoint_descriptor_index = i;
	midi_function[i++] = (struct usb_descriptor_header *) &bulk_out_desc;
	midi_function[i++] = (struct usb_descriptor_header *) &ms_out_desc;
	midi_function[i++] = (struct usb_descriptor_header *) &bulk_in_desc;
	midi_function[i++] = (struct usb_descriptor_header *) &ms_in_desc;
	midi_function[i++] = NULL;

	/*
	 * support all relevant hardware speeds... we expect that when
	 * hardware is dual speed, all bulk-capable endpoints work at
	 * both speeds
	 */
	/* copy descriptors, and track endpoint copies */
	f->fs_descriptors = FUNC15(midi_function);
	if (!f->fs_descriptors)
		goto fail_f_midi;

	if (FUNC10(c->cdev->gadget)) {
		bulk_in_desc.wMaxPacketSize = FUNC6(512);
		bulk_out_desc.wMaxPacketSize = FUNC6(512);
		f->hs_descriptors = FUNC15(midi_function);
		if (!f->hs_descriptors)
			goto fail_f_midi;
	}

	if (FUNC11(c->cdev->gadget)) {
		bulk_in_desc.wMaxPacketSize = FUNC6(1024);
		bulk_out_desc.wMaxPacketSize = FUNC6(1024);
		i = endpoint_descriptor_index;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &bulk_out_desc;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &bulk_out_ss_comp_desc;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &ms_out_desc;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &bulk_in_desc;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &bulk_in_ss_comp_desc;
		midi_function[i++] = (struct usb_descriptor_header *)
				     &ms_in_desc;
		f->ss_descriptors = FUNC15(midi_function);
		if (!f->ss_descriptors)
			goto fail_f_midi;
	}

	FUNC13(midi_function);

	return 0;

fail_f_midi:
	FUNC13(midi_function);
	FUNC17(f);
fail:
	FUNC8(midi);
fail_register:
	FUNC1(cdev, "%s: can't bind, err %d\n", f->name, status);

	return status;
}