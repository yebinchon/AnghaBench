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
struct watchdog_device {int /*<<< orphan*/  gov; } ;
struct governor_priv {int /*<<< orphan*/  gov; } ;

/* Variables and functions */
 int EINVAL ; 
 struct governor_priv* FUNC0 (char const*) ; 
 int /*<<< orphan*/  governor_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pretimeout_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct watchdog_device *wdd,
				     const char *buf)
{
	struct governor_priv *priv;

	FUNC1(&governor_lock);

	priv = FUNC0(buf);
	if (!priv) {
		FUNC2(&governor_lock);
		return -EINVAL;
	}

	FUNC3(&pretimeout_lock);
	wdd->gov = priv->gov;
	FUNC4(&pretimeout_lock);

	FUNC2(&governor_lock);

	return 0;
}