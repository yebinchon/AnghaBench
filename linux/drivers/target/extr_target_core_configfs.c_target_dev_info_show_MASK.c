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
struct se_device {TYPE_1__* transport; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* show_configfs_dev_params ) (struct se_device*,char*) ;} ;

/* Variables and functions */
 int FUNC0 (struct se_device*,char*) ; 
 struct se_device* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_device*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item, char *page)
{
	struct se_device *dev = FUNC1(item);
	int bl = 0;
	ssize_t read_bytes = 0;

	FUNC2(dev, page, &bl);
	read_bytes += bl;
	read_bytes += dev->transport->show_configfs_dev_params(dev,
			page+read_bytes);
	return read_bytes;
}