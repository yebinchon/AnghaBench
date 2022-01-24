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
struct urfile {TYPE_1__* urd; } ;
struct inode {int dummy; } ;
struct file {struct urfile* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  open_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct urfile*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct urfile *urf = file->private_data;

	FUNC0("ur_release\n");
	FUNC1(&urf->urd->open_lock);
	urf->urd->open_flag--;
	FUNC2(&urf->urd->open_lock);
	FUNC5(&urf->urd->wait);
	FUNC3(urf->urd);
	FUNC4(urf);
	return 0;
}