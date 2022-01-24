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
struct uwb_dev {int /*<<< orphan*/  dev_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct uwb_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct uwb_dev *uwb_dev = FUNC1(dev);
	char addr[UWB_ADDR_STRSIZE];

	FUNC2(addr, sizeof(addr), &uwb_dev->dev_addr);
	return FUNC0(buf, "%s\n", addr);
}