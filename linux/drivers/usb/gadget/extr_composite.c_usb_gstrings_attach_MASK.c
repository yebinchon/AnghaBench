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
struct usb_string {int /*<<< orphan*/  id; } ;
struct usb_gadget_strings {struct usb_string* strings; } ;
struct usb_gadget_string_container {int /*<<< orphan*/  list; } ;
struct usb_composite_dev {int /*<<< orphan*/  gstrings; } ;

/* Variables and functions */
 int EINVAL ; 
 struct usb_string* FUNC0 (struct usb_gadget_string_container*) ; 
 struct usb_string* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct usb_gadget_string_container*) ; 
 struct usb_gadget_string_container* FUNC3 (struct usb_gadget_strings**,unsigned int,unsigned int) ; 
 struct usb_gadget_strings** FUNC4 (struct usb_gadget_string_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_gadget_string_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_composite_dev*,struct usb_string*) ; 

struct usb_string *FUNC8(struct usb_composite_dev *cdev,
		struct usb_gadget_strings **sp, unsigned n_strings)
{
	struct usb_gadget_string_container *uc;
	struct usb_gadget_strings **n_gs;
	unsigned n_gstrings = 0;
	unsigned i;
	int ret;

	for (i = 0; sp[i]; i++)
		n_gstrings++;

	if (!n_gstrings)
		return FUNC1(-EINVAL);

	uc = FUNC3(sp, n_gstrings, n_strings);
	if (FUNC2(uc))
		return FUNC0(uc);

	n_gs = FUNC4(uc);
	ret = FUNC7(cdev, n_gs[0]->strings);
	if (ret)
		goto err;

	for (i = 1; i < n_gstrings; i++) {
		struct usb_string *m_s;
		struct usb_string *s;
		unsigned n;

		m_s = n_gs[0]->strings;
		s = n_gs[i]->strings;
		for (n = 0; n < n_strings; n++) {
			s->id = m_s->id;
			s++;
			m_s++;
		}
	}
	FUNC6(&uc->list, &cdev->gstrings);
	return n_gs[0]->strings;
err:
	FUNC5(uc);
	return FUNC1(ret);
}