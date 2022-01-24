#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* read_char ) () ;} ;

/* Variables and functions */
 int NO_POLL_CHAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* dbg_io_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ kgdb_nmi_knock ; 
 char* kgdb_nmi_magic ; 
 int /*<<< orphan*/  kgdb_nmi_num_readers ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	static int n;
	int c = -1;
	const char *magic = kgdb_nmi_magic;
	size_t m = FUNC3(magic);
	bool printch = 0;

	c = dbg_io_ops->read_char();
	if (c == NO_POLL_CHAR)
		return c;

	if (!kgdb_nmi_knock && (c == '\r' || c == '\n')) {
		return 1;
	} else if (c == magic[n]) {
		n = (n + 1) % m;
		if (!n)
			return 1;
		printch = 1;
	} else {
		n = 0;
	}

	if (FUNC0(&kgdb_nmi_num_readers)) {
		FUNC2(c);
		return 0;
	}

	if (printch) {
		FUNC1("%c", c);
		return 0;
	}

	FUNC1("\r%s %s to enter the debugger> %*s",
		   kgdb_nmi_knock ? "Type" : "Hit",
		   kgdb_nmi_knock ? magic  : "<return>", (int)m, "");
	while (m--)
		FUNC1("\b");
	return 0;
}