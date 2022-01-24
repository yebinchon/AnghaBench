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
struct tty_ldisc_ops {char* name; } ;
struct seq_file {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_ldisc_ops*) ; 
 struct tty_ldisc_ops* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc_ops*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	int i = *(loff_t *)v;
	struct tty_ldisc_ops *ldops;

	ldops = FUNC1(i);
	if (FUNC0(ldops))
		return 0;
	FUNC3(m, "%-10s %2d\n", ldops->name ? ldops->name : "???", i);
	FUNC2(ldops);
	return 0;
}