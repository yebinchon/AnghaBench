#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {char* bus_name; } ;
struct usb_hcd {char* product_desc; TYPE_2__* driver; TYPE_1__ self; } ;
struct TYPE_6__ {char* sysname; char* release; } ;
struct TYPE_5__ {char* description; } ;

/* Variables and functions */
#define  USB_DT_STRING 128 
 int FUNC0 (char const*,int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,char*) ; 

__attribute__((used)) static unsigned
FUNC4(int id, struct usb_hcd const *hcd, u8 *data, unsigned len)
{
	char buf[100];
	char const *s;
	static char const langids[4] = {4, USB_DT_STRING, 0x09, 0x04};

	/* language ids */
	switch (id) {
	case 0:
		/* Array of LANGID codes (0x0409 is MSFT-speak for "en-us") */
		/* See http://www.usb.org/developers/docs/USB_LANGIDs.pdf */
		if (len > 4)
			len = 4;
		FUNC2(data, langids, len);
		return len;
	case 1:
		/* Serial number */
		s = hcd->self.bus_name;
		break;
	case 2:
		/* Product name */
		s = hcd->product_desc;
		break;
	case 3:
		/* Manufacturer */
		FUNC3 (buf, sizeof buf, "%s %s %s", FUNC1()->sysname,
			FUNC1()->release, hcd->driver->description);
		s = buf;
		break;
	default:
		/* Can't happen; caller guarantees it */
		return 0;
	}

	return FUNC0(s, data, len);
}