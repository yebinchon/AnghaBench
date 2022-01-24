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
struct us_data {TYPE_1__* current_urb; int /*<<< orphan*/  pusb_dev; } ;
struct TYPE_2__ {unsigned int actual_length; } ;

/* Variables and functions */
 int FUNC0 (struct us_data*,unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,void*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_stor_blocking_completion ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*,unsigned int) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ) ; 

int FUNC4(struct us_data *us, unsigned int pipe,
	void *buf, unsigned int length, unsigned int *act_len)
{
	int result;

	FUNC2(us, "xfer %u bytes\n", length);

	/* fill and submit the URB */
	FUNC1(us->current_urb, us->pusb_dev, pipe, buf, length,
		      usb_stor_blocking_completion, NULL);
	result = FUNC3(us, 0);

	/* store the actual length of the data transferred */
	if (act_len)
		*act_len = us->current_urb->actual_length;
	return FUNC0(us, pipe, length, result, 
			us->current_urb->actual_length);
}