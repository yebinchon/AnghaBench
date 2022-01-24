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
struct tcmu_dev {char* dev_config; int dev_size; int /*<<< orphan*/  max_blocks; } ;
struct se_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tcmu_dev* FUNC1 (struct se_device*) ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct se_device *dev, char *b)
{
	struct tcmu_dev *udev = FUNC1(dev);
	ssize_t bl = 0;

	bl = FUNC2(b + bl, "Config: %s ",
		     udev->dev_config[0] ? udev->dev_config : "NULL");
	bl += FUNC2(b + bl, "Size: %llu ", udev->dev_size);
	bl += FUNC2(b + bl, "MaxDataAreaMB: %u\n",
		      FUNC0(udev->max_blocks));

	return bl;
}