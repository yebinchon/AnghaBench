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
struct xenbus_transaction {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XS_TRANSACTION_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC3(struct xenbus_transaction t, int abort)
{
	char abortstr[2];

	if (abort)
		FUNC0(abortstr, "F");
	else
		FUNC0(abortstr, "T");

	return FUNC1(FUNC2(t, XS_TRANSACTION_END, abortstr, NULL));
}