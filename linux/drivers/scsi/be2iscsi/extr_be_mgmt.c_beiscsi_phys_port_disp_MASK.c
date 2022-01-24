#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int phys_port; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct beiscsi_hba* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct beiscsi_hba *phba = FUNC1(shost);

	return FUNC2(buf, PAGE_SIZE, "Port Identifier : %u\n",
			phba->fw_config.phys_port);
}