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
struct usb_tx {struct usb_tx* buf; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct usb_tx*) ; 
 struct usb_tx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct usb_tx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_tx *FUNC5(int len)
{
	struct usb_tx *t = NULL;
	int ret = 0;

	t = FUNC2(sizeof(*t), GFP_ATOMIC);
	if (!t) {
		ret = -ENOMEM;
		goto out;
	}

	t->urb = FUNC3(0, GFP_ATOMIC);
	if (!(len % 512))
		len++;

	t->buf = FUNC1(len, GFP_ATOMIC);
	if (!t->urb || !t->buf) {
		ret = -ENOMEM;
		goto out;
	}

out:
	if (ret < 0) {
		if (t) {
			FUNC4(t->urb);
			FUNC0(t->buf);
			FUNC0(t);
		}
		return NULL;
	}

	return t;
}