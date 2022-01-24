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
struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MASTER_MINOR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 scalar_t__* type ; 
 int FUNC2 (unsigned int,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct *vma)
{
	unsigned int minor = FUNC0(FUNC1(file)->i_rdev);

	if (type[minor] == MASTER_MINOR)
		return FUNC2(minor, vma);

	return -ENODEV;
}