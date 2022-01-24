#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  MASTER_MINOR 129 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SLAVE_MINOR 128 
 TYPE_2__* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,int,size_t) ; 
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* type ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t off, int whence)
{
	unsigned int minor = FUNC0(FUNC1(file)->i_rdev);
	size_t image_size;
	loff_t res;

	switch (type[minor]) {
	case MASTER_MINOR:
	case SLAVE_MINOR:
		FUNC3(&image[minor].mutex);
		image_size = FUNC5(image[minor].resource);
		res = FUNC2(file, off, whence, image_size);
		FUNC4(&image[minor].mutex);
		return res;
	}

	return -EINVAL;
}