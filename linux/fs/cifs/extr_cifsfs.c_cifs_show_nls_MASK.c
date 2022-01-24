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
struct nls_table {int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 struct nls_table* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nls_table*) ; 

__attribute__((used)) static void
FUNC3(struct seq_file *s, struct nls_table *cur)
{
	struct nls_table *def;

	/* Display iocharset= option if it's not default charset */
	def = FUNC0();
	if (def != cur)
		FUNC1(s, ",iocharset=%s", cur->charset);
	FUNC2(def);
}