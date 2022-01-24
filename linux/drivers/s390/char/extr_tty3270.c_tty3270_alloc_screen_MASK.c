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
struct tty3270_line {struct tty3270_line* cells; } ;
struct tty3270_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tty3270_line* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct tty3270_line*) ; 
 void* FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tty3270_line *
FUNC3(unsigned int rows, unsigned int cols)
{
	struct tty3270_line *screen;
	unsigned long size;
	int lines;

	size = sizeof(struct tty3270_line) * (rows - 2);
	screen = FUNC2(size, GFP_KERNEL);
	if (!screen)
		goto out_err;
	for (lines = 0; lines < rows - 2; lines++) {
		size = sizeof(struct tty3270_cell) * cols;
		screen[lines].cells = FUNC2(size, GFP_KERNEL);
		if (!screen[lines].cells)
			goto out_screen;
	}
	return screen;
out_screen:
	while (lines--)
		FUNC1(screen[lines].cells);
	FUNC1(screen);
out_err:
	return FUNC0(-ENOMEM);
}