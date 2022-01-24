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
struct us_data {int /*<<< orphan*/  send_ctrl_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBAT_CMD_UIO ; 
 int /*<<< orphan*/  USBAT_UIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned char) ; 
 int FUNC1 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct us_data *us,
			       unsigned char enable_flags,
			       unsigned char data_flags)
{
	return FUNC1(us,
		us->send_ctrl_pipe,
		USBAT_CMD_UIO,
		0x40,
		FUNC0(enable_flags, data_flags),
		0,
		NULL,
		USBAT_UIO_WRITE);
}