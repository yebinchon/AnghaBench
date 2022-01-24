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
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct file* FUNC2 (struct file*) ; 
 struct file* redirect ; 
 int /*<<< orphan*/  redirect_lock ; 
 scalar_t__ redirected_tty_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;
	if (file->f_op->write == redirected_tty_write) {
		struct file *f;
		FUNC3(&redirect_lock);
		f = redirect;
		redirect = NULL;
		FUNC4(&redirect_lock);
		if (f)
			FUNC1(f);
		return 0;
	}
	FUNC3(&redirect_lock);
	if (redirect) {
		FUNC4(&redirect_lock);
		return -EBUSY;
	}
	redirect = FUNC2(file);
	FUNC4(&redirect_lock);
	return 0;
}