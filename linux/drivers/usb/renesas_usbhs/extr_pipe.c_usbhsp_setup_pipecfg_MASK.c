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
typedef  int u16 ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int DIR_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IS_DIR_HOST ; 
 int /*<<< orphan*/  IS_DIR_IN ; 
 int SHTNAK ; 
#define  TYPE_BULK 133 
#define  TYPE_INT 132 
#define  TYPE_ISO 131 
#define  USB_ENDPOINT_XFER_BULK 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 scalar_t__ FUNC0 (struct usbhs_pipe*) ; 
 size_t FUNC1 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbhs_pipe *pipe, int is_host,
				int dir_in, u16 *pipecfg)
{
	u16 type = 0;
	u16 bfre = 0;
	u16 dblb = 0;
	u16 cntmd = 0;
	u16 dir = 0;
	u16 epnum = 0;
	u16 shtnak = 0;
	static const u16 type_array[] = {
		[USB_ENDPOINT_XFER_BULK] = TYPE_BULK,
		[USB_ENDPOINT_XFER_INT]  = TYPE_INT,
		[USB_ENDPOINT_XFER_ISOC] = TYPE_ISO,
	};

	if (FUNC0(pipe))
		return -EINVAL;

	/*
	 * PIPECFG
	 *
	 * see
	 *  - "Register Descriptions" - "PIPECFG" register
	 *  - "Features"  - "Pipe configuration"
	 *  - "Operation" - "Pipe Control"
	 */

	/* TYPE */
	type = type_array[FUNC1(pipe)];

	/* BFRE */
	if (FUNC2(pipe, USB_ENDPOINT_XFER_ISOC) ||
	    FUNC2(pipe, USB_ENDPOINT_XFER_BULK))
		bfre = 0; /* FIXME */

	/* DBLB: see usbhs_pipe_config_update() */

	/* CNTMD */
	if (FUNC2(pipe, USB_ENDPOINT_XFER_BULK))
		cntmd = 0; /* FIXME */

	/* DIR */
	if (dir_in)
		FUNC3(pipe, IS_DIR_HOST);

	if (!!is_host ^ !!dir_in)
		dir |= DIR_OUT;

	if (!dir)
		FUNC3(pipe, IS_DIR_IN);

	/* SHTNAK */
	if (FUNC2(pipe, USB_ENDPOINT_XFER_BULK) &&
	    !dir)
		shtnak = SHTNAK;

	/* EPNUM */
	epnum = 0; /* see usbhs_pipe_config_update() */
	*pipecfg = type		|
		   bfre		|
		   dblb		|
		   cntmd	|
		   dir		|
		   shtnak	|
		   epnum;
	return 0;
}