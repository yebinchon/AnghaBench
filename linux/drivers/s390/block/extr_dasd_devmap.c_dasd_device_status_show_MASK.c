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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int state; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  DASD_STATE_BASIC 133 
#define  DASD_STATE_KNOWN 132 
#define  DASD_STATE_NEW 131 
#define  DASD_STATE_ONLINE 130 
#define  DASD_STATE_READY 129 
#define  DASD_STATE_UNFMT 128 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct dasd_device *device;
	ssize_t len;

	device = FUNC1(FUNC4(dev));
	if (!FUNC0(device)) {
		switch (device->state) {
		case DASD_STATE_NEW:
			len = FUNC3(buf, PAGE_SIZE, "new\n");
			break;
		case DASD_STATE_KNOWN:
			len = FUNC3(buf, PAGE_SIZE, "detected\n");
			break;
		case DASD_STATE_BASIC:
			len = FUNC3(buf, PAGE_SIZE, "basic\n");
			break;
		case DASD_STATE_UNFMT:
			len = FUNC3(buf, PAGE_SIZE, "unformatted\n");
			break;
		case DASD_STATE_READY:
			len = FUNC3(buf, PAGE_SIZE, "ready\n");
			break;
		case DASD_STATE_ONLINE:
			len = FUNC3(buf, PAGE_SIZE, "online\n");
			break;
		default:
			len = FUNC3(buf, PAGE_SIZE, "no stat\n");
			break;
		}
		FUNC2(device);
	} else
		len = FUNC3(buf, PAGE_SIZE, "unknown\n");
	return len;
}