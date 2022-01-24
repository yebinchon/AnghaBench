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
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCT_U232_GET_MODEM_STAT_REQUEST ; 
 int MCT_U232_GET_MODEM_STAT_SIZE ; 
 int /*<<< orphan*/  MCT_U232_GET_REQUEST_TYPE ; 
 int /*<<< orphan*/  MCT_U232_MAX_SIZE ; 
 int /*<<< orphan*/  WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_serial_port *port,
				   unsigned char *msr)
{
	int rc;
	unsigned char *buf;

	buf = FUNC3(MCT_U232_MAX_SIZE, GFP_KERNEL);
	if (buf == NULL) {
		*msr = 0;
		return -ENOMEM;
	}
	rc = FUNC4(port->serial->dev, FUNC5(port->serial->dev, 0),
			MCT_U232_GET_MODEM_STAT_REQUEST,
			MCT_U232_GET_REQUEST_TYPE,
			0, 0, buf, MCT_U232_GET_MODEM_STAT_SIZE,
			WDR_TIMEOUT);
	if (rc < MCT_U232_GET_MODEM_STAT_SIZE) {
		FUNC1(&port->dev, "Get MODEM STATus failed (error = %d)\n", rc);

		if (rc >= 0)
			rc = -EIO;

		*msr = 0;
	} else {
		*msr = buf[0];
	}
	FUNC0(&port->dev, "get_modem_stat: 0x%x\n", *msr);
	FUNC2(buf);
	return rc;
}