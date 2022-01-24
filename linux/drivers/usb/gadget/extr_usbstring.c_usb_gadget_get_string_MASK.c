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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int u8 ;
struct usb_string {int id; int /*<<< orphan*/  s; } ;
struct usb_gadget_strings {int language; struct usb_string* strings; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_DT_STRING ; 
 int /*<<< orphan*/  UTF16_LITTLE_ENDIAN ; 
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC3 (const struct usb_gadget_strings *table, int id, u8 *buf)
{
	struct usb_string	*s;
	int			len;

	/* descriptor 0 has the language id */
	if (id == 0) {
		buf [0] = 4;
		buf [1] = USB_DT_STRING;
		buf [2] = (u8) table->language;
		buf [3] = (u8) (table->language >> 8);
		return 4;
	}
	for (s = table->strings; s && s->s; s++)
		if (s->id == id)
			break;

	/* unrecognized: stall. */
	if (!s || !s->s)
		return -EINVAL;

	/* string descriptors have length, tag, then UTF16-LE text */
	len = FUNC0 ((size_t) 126, FUNC1 (s->s));
	len = FUNC2(s->s, len, UTF16_LITTLE_ENDIAN,
			(wchar_t *) &buf[2], 126);
	if (len < 0)
		return -EINVAL;
	buf [0] = (len + 1) * 2;
	buf [1] = USB_DT_STRING;
	return buf [0];
}