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
struct us_data {int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  send_ctrl_pipe; } ;

/* Variables and functions */
 int HZ ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_ENDPOINT_HALT ; 
 int /*<<< orphan*/  USB_RECIP_ENDPOINT ; 
 int /*<<< orphan*/  USB_REQ_CLEAR_FEATURE ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct us_data*,char*,int) ; 

int FUNC5(struct us_data *us, unsigned int pipe)
{
	int result;
	int endp = FUNC0(pipe);

	if (FUNC1 (pipe))
		endp |= USB_DIR_IN;

	result = FUNC3(us, us->send_ctrl_pipe,
		USB_REQ_CLEAR_FEATURE, USB_RECIP_ENDPOINT,
		USB_ENDPOINT_HALT, endp,
		NULL, 0, 3*HZ);

	if (result >= 0)
		FUNC2(us->pusb_dev, endp);

	FUNC4(us, "result = %d\n", result);
	return result;
}