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
struct seq_file {struct meson_msr_id* private; } ;
struct meson_msr_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct meson_msr_id*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *data)
{
	struct meson_msr_id *clk_msr_id = s->private;
	unsigned int precision = 0;
	int val;

	val = FUNC0(clk_msr_id, &precision);
	if (val < 0)
		return val;

	FUNC1(s, "%d\t+/-%dHz\n", val, precision);

	return 0;
}