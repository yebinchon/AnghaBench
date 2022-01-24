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
struct of_phandle_args {int args_count; int /*<<< orphan*/ * args; int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 

void FUNC2(const char *msg, const struct of_phandle_args *args)
{
	int i;
	FUNC1("%s %pOF", msg, args->np);
	for (i = 0; i < args->args_count; i++) {
		const char delim = i ? ',' : ':';

		FUNC0("%c%08x", delim, args->args[i]);
	}
	FUNC0("\n");
}