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
struct mm_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 unsigned long NO_COOKIE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct file* FUNC2 (struct mm_struct*) ; 

__attribute__((used)) static unsigned long FUNC3(struct mm_struct *mm)
{
	unsigned long cookie = NO_COOKIE;
	struct file *exe_file;

	if (!mm)
		goto done;

	exe_file = FUNC2(mm);
	if (!exe_file)
		goto done;

	cookie = FUNC0(&exe_file->f_path);
	FUNC1(exe_file);
done:
	return cookie;
}