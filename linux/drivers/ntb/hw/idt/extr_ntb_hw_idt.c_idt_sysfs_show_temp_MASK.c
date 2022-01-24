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
struct sensor_device_attribute {int index; } ;
struct idt_ntb_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum idt_temp_val { ____Placeholder_idt_temp_val } idt_temp_val ;

/* Variables and functions */
 struct idt_ntb_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int,long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(da);
	struct idt_ntb_dev *ndev = FUNC0(dev);
	enum idt_temp_val type = attr->index;
	long mdeg;

	FUNC1(ndev, type, &mdeg);
	return FUNC2(buf, "%ld\n", mdeg);
}