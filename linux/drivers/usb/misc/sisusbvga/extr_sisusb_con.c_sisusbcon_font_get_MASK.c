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
struct TYPE_2__ {int /*<<< orphan*/  height; } ;
struct vc_data {TYPE_1__ vc_font; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  font_backup; } ;
struct console_font {int width; int charcount; int /*<<< orphan*/  data; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vc_data *c, struct console_font *font)
{
	struct sisusb_usb_data *sisusb;

	sisusb = FUNC2(c->vc_num);
	if (!sisusb)
		return -ENODEV;

	/* sisusb->lock is down */

	font->width = 8;
	font->height = c->vc_font.height;
	font->charcount = 256;

	if (!font->data) {
		FUNC1(&sisusb->lock);
		return 0;
	}

	if (!sisusb->font_backup) {
		FUNC1(&sisusb->lock);
		return -ENODEV;
	}

	/* Copy 256 chars only, like vgacon */
	FUNC0(font->data, sisusb->font_backup, 256 * 32);

	FUNC1(&sisusb->lock);

	return 0;
}