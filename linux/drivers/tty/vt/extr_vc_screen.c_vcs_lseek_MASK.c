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
struct file {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct file*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC5(struct file *file, loff_t offset, int orig)
{
	int size;

	FUNC0();
	size = FUNC4(FUNC2(file));
	FUNC1();
	if (size < 0)
		return size;
	return FUNC3(file, offset, orig, size);
}