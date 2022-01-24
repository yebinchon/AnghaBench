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
struct most_interface {int interface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ITYPE_HBI 136 
#define  ITYPE_I2C 135 
#define  ITYPE_I2S 134 
#define  ITYPE_LOOPBACK 133 
#define  ITYPE_MEDIALB_DIM 132 
#define  ITYPE_MEDIALB_DIM2 131 
#define  ITYPE_PCIE 130 
#define  ITYPE_TSI 129 
#define  ITYPE_USB 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 struct most_interface* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			      struct device_attribute *attr,
			      char *buf)
{
	struct most_interface *iface = FUNC1(dev);

	switch (iface->interface) {
	case ITYPE_LOOPBACK:
		return FUNC0(buf, PAGE_SIZE, "loopback\n");
	case ITYPE_I2C:
		return FUNC0(buf, PAGE_SIZE, "i2c\n");
	case ITYPE_I2S:
		return FUNC0(buf, PAGE_SIZE, "i2s\n");
	case ITYPE_TSI:
		return FUNC0(buf, PAGE_SIZE, "tsi\n");
	case ITYPE_HBI:
		return FUNC0(buf, PAGE_SIZE, "hbi\n");
	case ITYPE_MEDIALB_DIM:
		return FUNC0(buf, PAGE_SIZE, "mlb_dim\n");
	case ITYPE_MEDIALB_DIM2:
		return FUNC0(buf, PAGE_SIZE, "mlb_dim2\n");
	case ITYPE_USB:
		return FUNC0(buf, PAGE_SIZE, "usb\n");
	case ITYPE_PCIE:
		return FUNC0(buf, PAGE_SIZE, "pcie\n");
	}
	return FUNC0(buf, PAGE_SIZE, "unknown\n");
}