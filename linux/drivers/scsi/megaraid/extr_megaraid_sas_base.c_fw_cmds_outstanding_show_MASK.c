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
struct megasas_instance {int /*<<< orphan*/  fw_outstanding; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *cdev,
				 struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC1(cdev);
	struct megasas_instance *instance = (struct megasas_instance *)shost->hostdata;

	return FUNC2(buf, PAGE_SIZE, "%d\n", FUNC0(&instance->fw_outstanding));
}