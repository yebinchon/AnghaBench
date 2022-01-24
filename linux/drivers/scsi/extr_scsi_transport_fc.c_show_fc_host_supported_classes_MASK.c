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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FC_COS_UNSPECIFIED ; 
 scalar_t__ FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4 (struct device *dev,
			        struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC3(dev);

	if (FUNC0(shost) == FC_COS_UNSPECIFIED)
		return FUNC2(buf, 20, "unspecified\n");

	return FUNC1(FUNC0(shost), buf);
}