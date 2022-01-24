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
struct file {TYPE_1__* f_op; int /*<<< orphan*/  f_mapping; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {int (* flush ) (struct file*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct file* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, fl_owner_t td)
{
	struct file *lower_file = FUNC0(file);

	if (lower_file->f_op->flush) {
		FUNC1(file->f_mapping);
		return lower_file->f_op->flush(lower_file, td);
	}

	return 0;
}