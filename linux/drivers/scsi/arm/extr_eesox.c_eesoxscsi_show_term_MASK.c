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
struct expansion_card {int dummy; } ;
struct eesoxscsi_info {int control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct expansion_card* FUNC0 (struct device*) ; 
 int EESOX_TERM_ENABLE ; 
 struct Scsi_Host* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct expansion_card *ec = FUNC0(dev);
	struct Scsi_Host *host = FUNC1(ec);
	struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;

	return FUNC2(buf, "%d\n", info->control & EESOX_TERM_ENABLE ? 1 : 0);
}