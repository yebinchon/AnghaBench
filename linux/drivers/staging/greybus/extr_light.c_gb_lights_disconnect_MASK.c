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
struct gb_lights {int /*<<< orphan*/  connection; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_lights*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_bundle*) ; 
 scalar_t__ FUNC4 (struct gb_bundle*) ; 
 struct gb_lights* FUNC5 (struct gb_bundle*) ; 

__attribute__((used)) static void FUNC6(struct gb_bundle *bundle)
{
	struct gb_lights *glights = FUNC5(bundle);

	if (FUNC4(bundle))
		FUNC3(bundle);

	FUNC1(glights->connection);
	FUNC0(glights->connection);

	FUNC2(glights);
}