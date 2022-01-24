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
struct usb_function {TYPE_1__* config; } ;
struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int dummy; } ;
struct snd_card {int dummy; } ;
struct f_midi {struct snd_card* card; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_function*) ; 
 struct f_midi* FUNC2 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*) ; 

__attribute__((used)) static void FUNC5(struct usb_configuration *c, struct usb_function *f)
{
	struct usb_composite_dev *cdev = f->config->cdev;
	struct f_midi *midi = FUNC2(f);
	struct snd_card *card;

	FUNC0(cdev, "unbind\n");

	/* just to be sure */
	FUNC1(f);

	card = midi->card;
	midi->card = NULL;
	if (card)
		FUNC3(card);

	FUNC4(f);
}