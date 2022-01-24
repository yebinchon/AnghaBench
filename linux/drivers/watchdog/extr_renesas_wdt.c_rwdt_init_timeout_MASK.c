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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct rwdt_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rwdt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RWTCNT ; 
 int /*<<< orphan*/  FUNC1 (struct rwdt_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rwdt_priv* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdev)
{
	struct rwdt_priv *priv = FUNC2(wdev);

	FUNC1(priv, 65536 - FUNC0(priv, wdev->timeout), RWTCNT);

	return 0;
}