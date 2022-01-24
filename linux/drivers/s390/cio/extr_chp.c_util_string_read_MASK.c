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
struct TYPE_2__ {int /*<<< orphan*/  util_str; } ;
struct channel_path {int /*<<< orphan*/  lock; TYPE_1__ desc_fmt3; } ;
struct bin_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct channel_path* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *filp, struct kobject *kobj,
				struct bin_attribute *attr, char *buf,
				loff_t off, size_t count)
{
	struct channel_path *chp = FUNC4(FUNC0(kobj));
	ssize_t rc;

	FUNC2(&chp->lock);
	rc = FUNC1(buf, count, &off, chp->desc_fmt3.util_str,
				     sizeof(chp->desc_fmt3.util_str));
	FUNC3(&chp->lock);

	return rc;
}