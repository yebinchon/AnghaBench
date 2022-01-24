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
struct dlm_rsb {int res_length; unsigned char* res_name; int /*<<< orphan*/  res_flags; int /*<<< orphan*/  res_toss_time; int /*<<< orphan*/  res_dir_nodeid; int /*<<< orphan*/  res_master_nodeid; int /*<<< orphan*/  res_nodeid; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_rsb*) ; 

__attribute__((used)) static void FUNC8(struct dlm_rsb *r, struct seq_file *s)
{
	int our_nodeid = FUNC0();
	int print_name = 1;
	int i;

	FUNC3(r);

	FUNC4(s, "rsb %p %d %d %d %d %lu %lx %d ",
		   r,
		   r->res_nodeid,
		   r->res_master_nodeid,
		   r->res_dir_nodeid,
		   our_nodeid,
		   r->res_toss_time,
		   r->res_flags,
		   r->res_length);

	for (i = 0; i < r->res_length; i++) {
		if (!FUNC1(r->res_name[i]) || !FUNC2(r->res_name[i]))
			print_name = 0;
	}

	FUNC6(s, print_name ? "str " : "hex");

	for (i = 0; i < r->res_length; i++) {
		if (print_name)
			FUNC4(s, "%c", r->res_name[i]);
		else
			FUNC4(s, " %02x", (unsigned char)r->res_name[i]);
	}
	FUNC5(s, '\n');
	FUNC7(r);
}