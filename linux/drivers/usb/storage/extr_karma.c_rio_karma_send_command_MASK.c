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
struct us_data {char* iobuf; int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; scalar_t__ extra; } ;
struct karma_data {unsigned char* recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIO_PREFIX ; 
 int /*<<< orphan*/  RIO_PREFIX_LEN ; 
 int /*<<< orphan*/  RIO_RECV_LEN ; 
 int /*<<< orphan*/  RIO_SEND_LEN ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_XFER_GOOD ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int FUNC5 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct us_data*,char*,char) ; 

__attribute__((used)) static int FUNC7(char cmd, struct us_data *us)
{
	int result;
	unsigned long timeout;
	static unsigned char seq = 1;
	struct karma_data *data = (struct karma_data *) us->extra;

	FUNC6(us, "sending command %04x\n", cmd);
	FUNC1(us->iobuf, 0, RIO_SEND_LEN);
	FUNC0(us->iobuf, RIO_PREFIX, RIO_PREFIX_LEN);
	us->iobuf[5] = cmd;
	us->iobuf[6] = seq;

	timeout = jiffies + FUNC2(6000);
	for (;;) {
		result = FUNC5(us, us->send_bulk_pipe,
			us->iobuf, RIO_SEND_LEN, NULL);
		if (result != USB_STOR_XFER_GOOD)
			goto err;

		result = FUNC5(us, us->recv_bulk_pipe,
			data->recv, RIO_RECV_LEN, NULL);
		if (result != USB_STOR_XFER_GOOD)
			goto err;

		if (data->recv[5] == seq)
			break;

		if (FUNC4(jiffies, timeout))
			goto err;

		us->iobuf[4] = 0x80;
		us->iobuf[5] = 0;
		FUNC3(50);
	}

	seq++;
	if (seq == 0)
		seq = 1;

	FUNC6(us, "sent command %04x\n", cmd);
	return 0;
err:
	FUNC6(us, "command %04x failed\n", cmd);
	return USB_STOR_TRANSPORT_FAILED;
}