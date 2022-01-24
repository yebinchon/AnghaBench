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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int FUNC4 (struct dasd_device*) ; 
 int FUNC5 (struct dasd_device*) ; 
 int FUNC6 (struct dasd_device*) ; 
 int FUNC7 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct dasd_device *device;
	u8 opm, nppm, cablepm, cuirpm, hpfpm, ifccpm;

	device = FUNC1(FUNC10(dev));
	if (FUNC0(device))
		return FUNC9(buf, "0\n");

	opm = FUNC7(device);
	nppm = FUNC6(device);
	cablepm = FUNC2(device);
	cuirpm = FUNC3(device);
	hpfpm = FUNC4(device);
	ifccpm = FUNC5(device);
	FUNC8(device);

	return FUNC9(buf, "%02x %02x %02x %02x %02x %02x\n", opm, nppm,
		       cablepm, cuirpm, hpfpm, ifccpm);
}