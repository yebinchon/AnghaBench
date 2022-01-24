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
struct zd_ioreq16 {int /*<<< orphan*/  addr; } ;
struct zd_chip {int /*<<< orphan*/  usb; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int USB_MAX_IOWRITE16_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct zd_ioreq16 const*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct zd_chip *chip,
                  const struct zd_ioreq16 *ioreqs, unsigned int count)
{
	int r;
	unsigned int i, j, t, max;

	FUNC0(FUNC2(&chip->mutex));
	FUNC6(&chip->usb);

	for (i = 0; i < count; i += j + t) {
		t = 0;
		max = count-i;
		if (max > USB_MAX_IOWRITE16_COUNT)
			max = USB_MAX_IOWRITE16_COUNT;
		for (j = 0; j < max; j++) {
			if (!ioreqs[i+j].addr) {
				t = 1;
				break;
			}
		}

		r = FUNC4(&chip->usb, &ioreqs[i], j);
		if (r) {
			FUNC5(&chip->usb, 0);
			FUNC1(FUNC3(chip),
				  "error zd_usb_iowrite16v. Error number %d\n",
				  r);
			return r;
		}
	}

	return FUNC5(&chip->usb, 50 /* ms */);
}