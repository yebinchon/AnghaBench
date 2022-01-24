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
struct us_data {unsigned char* iobuf; int /*<<< orphan*/  recv_bulk_pipe; } ;

/* Variables and functions */
 int EIO ; 
 unsigned char LUNBITS ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct us_data*,unsigned char*,int) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct us_data *us, unsigned char *deviceID) {
	unsigned char *command = us->iobuf;
	unsigned char *content = us->iobuf;
	int result, i;

	FUNC0(command, 0, 12);
	command[0] = 0xED;
	command[1] = LUNBITS;

	result = FUNC1(us, command, 12);
	if (result)
		return result;

	result = FUNC2(us, us->recv_bulk_pipe,
			content, 64, NULL);

	for (i = 0; i < 4; i++)
		deviceID[i] = content[i];

	return (result == USB_STOR_XFER_GOOD ? 0 : -EIO);
}