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
struct vc_data {int vc_scan_lines; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int current_font_height; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vc_data *c, unsigned int newcols, unsigned int newrows,
		 unsigned int user)
{
	struct sisusb_usb_data *sisusb;
	int fh;

	sisusb = FUNC1(c->vc_num);
	if (!sisusb)
		return -ENODEV;

	fh = sisusb->current_font_height;

	FUNC0(&sisusb->lock);

	/* We are quite unflexible as regards resizing. The vt code
	 * handles sizes where the line length isn't equal the pitch
	 * quite badly. As regards the rows, our panning tricks only
	 * work well if the number of rows equals the visible number
	 * of rows.
	 */

	if (newcols != 80 || c->vc_scan_lines / fh != newrows)
		return -EINVAL;

	return 0;
}