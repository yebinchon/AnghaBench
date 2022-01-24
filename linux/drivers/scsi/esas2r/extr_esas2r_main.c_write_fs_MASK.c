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
struct esas2r_ioctl_fs {int dummy; } ;
struct esas2r_adapter {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct esas2r_adapter* FUNC0 (struct kobject*) ; 
 int FUNC1 (struct esas2r_adapter*,char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *file, struct kobject *kobj,
			struct bin_attribute *attr,
			char *buf, loff_t off, size_t count)
{
	struct esas2r_adapter *a = FUNC0(kobj);
	int length = FUNC2(sizeof(struct esas2r_ioctl_fs), count);
	int result = 0;

	result = FUNC1(a, buf, off, count);

	if (result < 0)
		result = 0;

	return length;
}