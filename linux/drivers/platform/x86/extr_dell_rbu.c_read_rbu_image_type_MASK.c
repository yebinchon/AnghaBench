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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  image_type ; 
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC1(struct file *filp, struct kobject *kobj,
				   struct bin_attribute *bin_attr,
				   char *buffer, loff_t pos, size_t count)
{
	int size = 0;
	if (!pos)
		size = FUNC0(buffer, count, "%s\n", image_type);
	return size;
}