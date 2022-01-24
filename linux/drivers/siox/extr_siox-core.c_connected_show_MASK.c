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
struct siox_device {int connected; int /*<<< orphan*/  smaster; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct siox_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct siox_device *sdev = FUNC3(dev);
	bool connected;

	FUNC0(sdev->smaster);

	connected = sdev->connected;

	FUNC1(sdev->smaster);

	return FUNC2(buf, "%u\n", connected);
}