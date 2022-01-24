#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_3__* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
struct TYPE_5__ {scalar_t__ allow_cna_fw_dump; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	scsi_qla_host_t *vha = FUNC3(FUNC1(dev));

	if (!FUNC0(vha->hw))
		return FUNC2(buf, PAGE_SIZE, "\n");
	else
		return FUNC2(buf, PAGE_SIZE, "%s\n",
		    vha->hw->allow_cna_fw_dump ? "true" : "false");
}