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
struct afs_net {int /*<<< orphan*/  ws_cell; } ;
struct afs_cell {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct afs_net* FUNC0 (struct seq_file*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct afs_cell* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct afs_cell *cell;
	struct afs_net *net;

	net = FUNC0(m);
	if (FUNC1(net->ws_cell)) {
		FUNC3();
		cell = FUNC2(net->ws_cell);
		if (cell)
			FUNC5(m, "%s\n", cell->name);
		FUNC4();
	}
	return 0;
}