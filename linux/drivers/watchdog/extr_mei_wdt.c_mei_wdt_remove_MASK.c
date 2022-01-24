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
struct mei_wdt {int /*<<< orphan*/  unregister; int /*<<< orphan*/  response; } ;
struct mei_cl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_cl_device*) ; 
 struct mei_wdt* FUNC6 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_wdt*) ; 

__attribute__((used)) static int FUNC8(struct mei_cl_device *cldev)
{
	struct mei_wdt *wdt = FUNC6(cldev);

	/* Free the caller in case of fw initiated or unexpected reset */
	if (!FUNC2(&wdt->response))
		FUNC1(&wdt->response);

	FUNC0(&wdt->unregister);

	FUNC7(wdt);

	FUNC5(cldev);

	FUNC3(wdt);

	FUNC4(wdt);

	return 0;
}