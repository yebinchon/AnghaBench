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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int vc_cols; int /*<<< orphan*/  vc_num; int /*<<< orphan*/  vc_video_erase_char; } ;
struct sisusb_usb_data {int sisusb_num_columns; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sisusb_usb_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sisusb_usb_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 
 scalar_t__ FUNC4 (struct vc_data*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct vc_data *c, int y, int x, int height, int width)
{
	struct sisusb_usb_data *sisusb;
	u16 eattr = c->vc_video_erase_char;
	int i, length, cols;
	u16 *dest;

	if (width <= 0 || height <= 0)
		return;

	sisusb = FUNC2(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */

	/* Need to clear buffer ourselves, because the vt does
	 * this AFTER calling us.
	 */

	dest = FUNC5(sisusb, c, x, y);

	cols = sisusb->sisusb_num_columns;

	if (width > cols)
		width = cols;

	if (x == 0 && width >= c->vc_cols) {

		FUNC6(dest, eattr, height * cols * 2);

	} else {

		for (i = height; i > 0; i--, dest += cols)
			FUNC6(dest, eattr, width * 2);

	}

	if (FUNC4(c, sisusb)) {
		FUNC0(&sisusb->lock);
		return;
	}

	length = ((height * cols) - x - (cols - width - x)) * 2;


	FUNC1(sisusb, FUNC5(sisusb, c, x, y),
			FUNC3(sisusb, c, x, y), length);

	FUNC0(&sisusb->lock);
}