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
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int e_d_tov; } ;

/* Variables and functions */
 struct fcoe_ctlr_device* FUNC0 (struct device*) ; 
 struct fcoe_ctlr* FUNC1 (struct fcoe_ctlr_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct fcoe_ctlr_device *ctlr_dev = FUNC0(dev);
	struct fcoe_ctlr *ctlr = FUNC1(ctlr_dev);

	return FUNC2(buf, "%d\n", ctlr->lp->e_d_tov);
}