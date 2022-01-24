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
struct zd_ioreq32 {int value; int /*<<< orphan*/  addr; } ;
struct zd_ioreq16 {int value; int /*<<< orphan*/  addr; } ;
struct zd_chip {int /*<<< orphan*/  usb; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  ioreqs16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int USB_MAX_IOWRITE32_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_chip*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct zd_ioreq16*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct zd_chip *chip,
				       const struct zd_ioreq32 *ioreqs,
				       unsigned int count)
{
	int i, j, r;
	struct zd_ioreq16 ioreqs16[USB_MAX_IOWRITE32_COUNT * 2];
	unsigned int count16;

	/* Use stack for values and addresses. */

	FUNC1(FUNC4(&chip->mutex));

	if (count == 0)
		return 0;
	if (count > USB_MAX_IOWRITE32_COUNT)
		return -EINVAL;

	count16 = 2 * count;
	FUNC0(count16 * sizeof(struct zd_ioreq16) > sizeof(ioreqs16));

	for (i = 0; i < count; i++) {
		j = 2*i;
		/* We write the high word always first. */
		ioreqs16[j].value   = ioreqs[i].value >> 16;
		ioreqs16[j].addr    = FUNC3(ioreqs[i].addr);
		ioreqs16[j+1].value = ioreqs[i].value;
		ioreqs16[j+1].addr  = ioreqs[i].addr;
	}

	r = FUNC6(&chip->usb, ioreqs16, count16);
#ifdef DEBUG
	if (r) {
		dev_dbg_f(zd_chip_dev(chip),
			  "error %d in zd_usb_write16v\n", r);
	}
#endif /* DEBUG */
	return r;
}