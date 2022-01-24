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
struct powertec_info {scalar_t__ term_ctl; } ;
struct expansion_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct expansion_card* FUNC0 (struct device*) ; 
 struct Scsi_Host* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct expansion_card *ec = FUNC0(dev);
	struct Scsi_Host *host = FUNC1(ec);
	struct powertec_info *info = (struct powertec_info *)host->hostdata;

	return FUNC2(buf, "%d\n", info->term_ctl ? 1 : 0);
}