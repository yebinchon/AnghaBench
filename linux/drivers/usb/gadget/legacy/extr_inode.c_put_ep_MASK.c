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
struct ep_data {int /*<<< orphan*/  wait; int /*<<< orphan*/  epfiles; int /*<<< orphan*/  dev; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ep_data*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (struct ep_data *data)
{
	if (FUNC2 (!FUNC5 (&data->count)))
		return;
	FUNC4 (data->dev);
	/* needs no more cleanup */
	FUNC0 (!FUNC3 (&data->epfiles));
	FUNC0 (FUNC6 (&data->wait));
	FUNC1 (data);
}