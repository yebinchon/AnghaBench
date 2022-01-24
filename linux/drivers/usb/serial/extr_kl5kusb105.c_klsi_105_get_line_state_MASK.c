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
typedef  int u8 ;
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KL5KUSB105A_SIO_POLL ; 
 int KLSI_STATUSBUF_LEN ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_serial_port *port,
				   unsigned long *line_state_p)
{
	int rc;
	u8 *status_buf;
	__u16 status;

	status_buf = FUNC5(KLSI_STATUSBUF_LEN, GFP_KERNEL);
	if (!status_buf)
		return -ENOMEM;

	status_buf[0] = 0xff;
	status_buf[1] = 0xff;
	rc = FUNC6(port->serial->dev,
			     FUNC7(port->serial->dev, 0),
			     KL5KUSB105A_SIO_POLL,
			     USB_TYPE_VENDOR | USB_DIR_IN,
			     0, /* value */
			     0, /* index */
			     status_buf, KLSI_STATUSBUF_LEN,
			     10000
			     );
	if (rc != KLSI_STATUSBUF_LEN) {
		FUNC1(&port->dev, "reading line status failed: %d\n", rc);
		if (rc >= 0)
			rc = -EIO;
	} else {
		status = FUNC2(status_buf);

		FUNC0(&port->dev, "read status %02x %02x\n",
			status_buf[0], status_buf[1]);

		*line_state_p = FUNC4(status);
	}

	FUNC3(status_buf);
	return rc;
}