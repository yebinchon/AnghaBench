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
struct wilc {scalar_t__ suspend_event; } ;
struct sdio_func {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct sdio_func* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*) ; 
 struct wilc* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct wilc*,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct sdio_func *func = FUNC3(dev);
	struct wilc *wilc = FUNC5(func);

	FUNC2(dev, "sdio resume\n");
	FUNC6(func);
	FUNC1(wilc);
	FUNC7(wilc, true);

	if (wilc->suspend_event)
		FUNC4(wilc);

	FUNC0(wilc);

	return 0;
}