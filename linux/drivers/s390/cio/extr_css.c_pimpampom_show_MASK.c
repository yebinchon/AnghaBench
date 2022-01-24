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
struct pmcw {int pim; int pam; int pom; } ;
struct TYPE_2__ {struct pmcw pmcw; } ;
struct subchannel {TYPE_1__ schib; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int) ; 
 struct subchannel* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			      struct device_attribute *attr,
			      char *buf)
{
	struct subchannel *sch = FUNC1(dev);
	struct pmcw *pmcw = &sch->schib.pmcw;

	return FUNC0(buf, "%02x %02x %02x\n",
		       pmcw->pim, pmcw->pam, pmcw->pom);
}