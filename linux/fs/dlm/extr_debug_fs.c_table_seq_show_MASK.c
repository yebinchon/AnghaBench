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
struct rsbtbl_iter {int format; int /*<<< orphan*/  rsb; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *iter_ptr)
{
	struct rsbtbl_iter *ri = iter_ptr;

	switch (ri->format) {
	case 1:
		FUNC0(ri->rsb, seq);
		break;
	case 2:
		if (ri->header) {
			FUNC4(seq, "id nodeid remid pid xid exflags flags sts grmode rqmode time_ms r_nodeid r_len r_name\n");
			ri->header = 0;
		}
		FUNC1(ri->rsb, seq);
		break;
	case 3:
		if (ri->header) {
			FUNC4(seq, "version rsb 1.1 lvb 1.1 lkb 1.1\n");
			ri->header = 0;
		}
		FUNC2(ri->rsb, seq);
		break;
	case 4:
		if (ri->header) {
			FUNC4(seq, "version 4 rsb 2\n");
			ri->header = 0;
		}
		FUNC3(ri->rsb, seq);
		break;
	}

	return 0;
}