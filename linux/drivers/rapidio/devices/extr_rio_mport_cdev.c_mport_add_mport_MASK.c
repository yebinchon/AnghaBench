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
struct rio_mport {int dummy; } ;
struct mport_dev {int dummy; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct mport_dev* FUNC0 (struct rio_mport*) ; 
 struct rio_mport* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
		struct class_interface *class_intf)
{
	struct rio_mport *mport = NULL;
	struct mport_dev *chdev = NULL;

	mport = FUNC1(dev);
	if (!mport)
		return -ENODEV;

	chdev = FUNC0(mport);
	if (!chdev)
		return -ENODEV;

	return 0;
}