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
typedef  size_t u8 ;
struct wusbhc {struct usb_encryption_descriptor* ccm1_etd; } ;
struct usb_security_descriptor {int /*<<< orphan*/  wTotalLength; } ;
struct usb_encryption_descriptor {int bLength; int bEncryptionValue; int /*<<< orphan*/  bEncryptionType; } ;
struct device {int dummy; } ;
struct usb_device {TYPE_3__* actconfig; void** rawdescriptors; TYPE_3__* config; struct device dev; } ;
struct TYPE_4__ {struct usb_device* usb_dev; } ;
struct hwahc {TYPE_1__ wa; struct wusbhc wusbhc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int /*<<< orphan*/  wTotalLength; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DT_SECURITY ; 
 int FUNC0 (void*,size_t,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int,char*,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hwahc *hwahc)
{
	int result;
	struct wusbhc *wusbhc = &hwahc->wusbhc;
	struct usb_device *usb_dev = hwahc->wa.usb_dev;
	struct device *dev = &usb_dev->dev;
	struct usb_security_descriptor *secd;
	struct usb_encryption_descriptor *etd;
	void *itr, *top;
	size_t itr_size, needed, bytes;
	u8 index;
	char buf[64];

	/* Find the host's security descriptors in the config descr bundle */
	index = (usb_dev->actconfig - usb_dev->config) /
		sizeof(usb_dev->config[0]);
	itr = usb_dev->rawdescriptors[index];
	itr_size = FUNC4(usb_dev->actconfig->desc.wTotalLength);
	top = itr + itr_size;
	result = FUNC0(usb_dev->rawdescriptors[index],
			FUNC4(usb_dev->actconfig->desc.wTotalLength),
			USB_DT_SECURITY, (void **) &secd, sizeof(*secd));
	if (result == -1) {
		FUNC3(dev, "BUG? WUSB host has no security descriptors\n");
		return 0;
	}
	needed = sizeof(*secd);
	if (top - (void *)secd < needed) {
		FUNC1(dev, "BUG? Not enough data to process security "
			"descriptor header (%zu bytes left vs %zu needed)\n",
			top - (void *) secd, needed);
		return 0;
	}
	needed = FUNC4(secd->wTotalLength);
	if (top - (void *)secd < needed) {
		FUNC1(dev, "BUG? Not enough data to process security "
			"descriptors (%zu bytes left vs %zu needed)\n",
			top - (void *) secd, needed);
		return 0;
	}
	/* Walk over the sec descriptors and store CCM1's on wusbhc */
	itr = (void *) secd + sizeof(*secd);
	top = (void *) secd + FUNC4(secd->wTotalLength);
	index = 0;
	bytes = 0;
	while (itr < top) {
		etd = itr;
		if (top - itr < sizeof(*etd)) {
			FUNC1(dev, "BUG: bad host security descriptor; "
				"not enough data (%zu vs %zu left)\n",
				top - itr, sizeof(*etd));
			break;
		}
		if (etd->bLength < sizeof(*etd)) {
			FUNC1(dev, "BUG: bad host encryption descriptor; "
				"descriptor is too short "
				"(%zu vs %zu needed)\n",
				(size_t)etd->bLength, sizeof(*etd));
			break;
		}
		itr += etd->bLength;
		bytes += FUNC5(buf + bytes, sizeof(buf) - bytes,
				  "%s (0x%02x) ",
				  FUNC6(etd->bEncryptionType),
				  etd->bEncryptionValue);
		wusbhc->ccm1_etd = etd;
	}
	FUNC2(dev, "supported encryption types: %s\n", buf);
	if (wusbhc->ccm1_etd == NULL) {
		FUNC1(dev, "E: host doesn't support CCM-1 crypto\n");
		return 0;
	}
	/* Pretty print what we support */
	return 0;
}