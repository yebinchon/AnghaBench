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
struct switchtec_ntb {int /*<<< orphan*/  ntb; } ;
struct switchtec_dev {struct switchtec_ntb* sndev; int /*<<< orphan*/ * link_notifier; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC4 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC5 (struct switchtec_ntb*) ; 
 struct switchtec_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev,
				 struct class_interface *class_intf)
{
	struct switchtec_dev *stdev = FUNC6(dev);
	struct switchtec_ntb *sndev = stdev->sndev;

	if (!sndev)
		return;

	stdev->link_notifier = NULL;
	stdev->sndev = NULL;
	FUNC2(&sndev->ntb);
	FUNC4(sndev);
	FUNC5(sndev);
	FUNC3(sndev);
	FUNC1(sndev);
	FUNC0(dev, "ntb device unregistered\n");
}