#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int transfer_buffer_length; int /*<<< orphan*/  transfer_buffer; } ;
struct ufx_data {int /*<<< orphan*/  usb_active; TYPE_2__* info; } ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct urb* FUNC7 (struct ufx_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ufx_data*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC9 (struct ufx_data*,struct urb*,int) ; 

__attribute__((used)) static int FUNC10(struct ufx_data *dev, int x, int y,
	int width, int height)
{
	size_t packed_line_len = FUNC0((width * 2), 4);
	int len, status, urb_lines, start_line = 0;

	if ((width <= 0) || (height <= 0) ||
	    (x + width > dev->info->var.xres) ||
	    (y + height > dev->info->var.yres))
		return -EINVAL;

	if (!FUNC2(&dev->usb_active))
		return 0;

	while (start_line < height) {
		struct urb *urb = FUNC7(dev);
		if (!urb) {
			FUNC6("ufx_handle_damage unable to get urb");
			return 0;
		}

		/* assume we have enough space to transfer at least one line */
		FUNC1(urb->transfer_buffer_length < (24 + (width * 2)));

		/* calculate the maximum number of lines we could fit in */
		urb_lines = (urb->transfer_buffer_length - 24) / packed_line_len;

		/* but we might not need this many */
		urb_lines = FUNC5(urb_lines, (height - start_line));

		FUNC4(urb->transfer_buffer, 0, urb->transfer_buffer_length);

		FUNC8(dev, urb->transfer_buffer, x, (y + start_line), width, urb_lines);
		len = 24 + (packed_line_len * urb_lines);

		status = FUNC9(dev, urb, len);
		FUNC3(status, "Error submitting URB");

		start_line += urb_lines;
	}

	return 0;
}