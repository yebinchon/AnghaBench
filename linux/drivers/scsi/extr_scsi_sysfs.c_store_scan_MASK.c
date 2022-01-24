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
struct Scsi_Host {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (struct Scsi_Host*,char const*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr,
	   const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	int res;

	res = FUNC1(shost, buf);
	if (res == 0)
		res = count;
	return res;
}