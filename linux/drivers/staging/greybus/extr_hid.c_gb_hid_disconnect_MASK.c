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
struct gb_hid {int /*<<< orphan*/  connection; int /*<<< orphan*/  hid; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_bundle*) ; 
 scalar_t__ FUNC3 (struct gb_bundle*) ; 
 struct gb_hid* FUNC4 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_hid*) ; 

__attribute__((used)) static void FUNC7(struct gb_bundle *bundle)
{
	struct gb_hid *ghid = FUNC4(bundle);

	if (FUNC3(bundle))
		FUNC2(bundle);

	FUNC5(ghid->hid);
	FUNC1(ghid->connection);
	FUNC0(ghid->connection);
	FUNC6(ghid);
}