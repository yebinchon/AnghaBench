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
struct rio_dev {int pef; TYPE_1__* rswitch; int /*<<< orphan*/  swpinfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__* nextdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RIO_PEF_SWITCH ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 struct rio_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	struct rio_dev *rdev = FUNC3(dev);
	char *str = buf;
	int i;

	if (rdev->pef & RIO_PEF_SWITCH) {
		for (i = 0; i < FUNC0(rdev->swpinfo); i++) {
			if (rdev->rswitch->nextdev[i])
				str += FUNC2(str, "%s\n",
					FUNC1(rdev->rswitch->nextdev[i]));
			else
				str += FUNC2(str, "null\n");
		}
	}

	return str - buf;
}