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
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 char TTY_NORMAL ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC8 (struct tty_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char,int /*<<< orphan*/ ) ; 
 unsigned char FUNC11 (unsigned char) ; 

__attribute__((used)) static void
FUNC12(struct tty_struct *tty, const unsigned char *cp,
			  char *fp, int count)
{
	struct n_tty_data *ldata = tty->disc_data;
	char flag = TTY_NORMAL;

	while (count--) {
		if (fp)
			flag = *fp++;
		if (FUNC4(flag == TTY_NORMAL)) {
			unsigned char c = *cp++;

			if (FUNC0(tty))
				c &= 0x7f;
			if (FUNC1(tty) && FUNC3(tty))
				c = FUNC11(c);
			if (FUNC2(tty)) {
				FUNC9(c, ldata);
				continue;
			}
			if (!FUNC10(c, ldata->char_map))
				FUNC6(tty, c);
			else if (FUNC8(tty, c) && count) {
				if (fp)
					flag = *fp++;
				FUNC7(tty, *cp++, flag);
				count--;
			}
		} else
			FUNC5(tty, *cp++, flag);
	}
}