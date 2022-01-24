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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {unsigned long packetsize; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ rbu_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct file *filp, struct kobject *kobj,
				     struct bin_attribute *bin_attr,
				     char *buffer, loff_t pos, size_t count)
{
	unsigned long temp;
	FUNC1(&rbu_data.lock);
	FUNC0();
	FUNC3(buffer, "%lu", &temp);
	if (temp < 0xffffffff)
		rbu_data.packetsize = temp;

	FUNC2(&rbu_data.lock);
	return count;
}