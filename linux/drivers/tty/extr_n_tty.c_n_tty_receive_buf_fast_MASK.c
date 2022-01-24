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
struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int /*<<< orphan*/  char_map; } ;

/* Variables and functions */
 char TTY_NORMAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC4 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct tty_struct *tty, const unsigned char *cp,
		       char *fp, int count)
{
	struct n_tty_data *ldata = tty->disc_data;
	char flag = TTY_NORMAL;

	while (count--) {
		if (fp)
			flag = *fp++;
		if (FUNC0(flag == TTY_NORMAL)) {
			unsigned char c = *cp++;

			if (!FUNC5(c, ldata->char_map))
				FUNC1(tty, c);
			else if (FUNC4(tty, c) && count) {
				if (fp)
					flag = *fp++;
				FUNC3(tty, *cp++, flag);
				count--;
			}
		} else
			FUNC2(tty, *cp++, flag);
	}
}