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
struct vc_data {int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {unsigned int font_backup_size; int font_backup_512; int /*<<< orphan*/  font_backup_height; int /*<<< orphan*/ * font_backup; } ;
struct console_font {unsigned int charcount; int width; int /*<<< orphan*/  height; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int KD_FONT_FLAG_DONT_RECALC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 struct sisusb_usb_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sisusb_usb_data*,int,int,int /*<<< orphan*/ ,int,int,int,struct vc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vc_data *c, struct console_font *font,
		   unsigned int flags)
{
	struct sisusb_usb_data *sisusb;
	unsigned charcount = font->charcount;

	if (font->width != 8 || (charcount != 256 && charcount != 512))
		return -EINVAL;

	sisusb = FUNC2(c->vc_num);
	if (!sisusb)
		return -ENODEV;

	/* sisusb->lock is down */

	/* Save the user-provided font into a buffer. This
	 * is used for restoring text mode after quitting
	 * from X and for the con_getfont routine.
	 */
	if (sisusb->font_backup) {
		if (sisusb->font_backup_size < charcount) {
			FUNC4(sisusb->font_backup);
			sisusb->font_backup = NULL;
		}
	}

	if (!sisusb->font_backup)
		sisusb->font_backup = FUNC5(FUNC0(charcount, 32));

	if (sisusb->font_backup) {
		FUNC1(sisusb->font_backup, font->data, charcount * 32);
		sisusb->font_backup_size = charcount;
		sisusb->font_backup_height = font->height;
		sisusb->font_backup_512 = (charcount == 512) ? 1 : 0;
	}

	/* do_font_op ups sisusb->lock */

	return FUNC3(sisusb, 1, 2, font->data,
			8192, (charcount == 512),
			(!(flags & KD_FONT_FLAG_DONT_RECALC)) ? 1 : 0,
			c, font->height, 1);
}