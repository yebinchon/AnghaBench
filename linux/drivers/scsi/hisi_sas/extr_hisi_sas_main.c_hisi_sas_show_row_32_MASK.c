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
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, int index,
				 int sz, __le32 *ptr)
{
	int i;

	/* completion header size not fixed per HW version */
	FUNC1(s, "index %04d:\n\t", index);
	for (i = 1; i <= sz / 4; i++, ptr++) {
		FUNC1(s, " 0x%08x", FUNC0(*ptr));
		if (!(i % 4))
			FUNC2(s, "\n\t");
	}
	FUNC2(s, "\n");
}