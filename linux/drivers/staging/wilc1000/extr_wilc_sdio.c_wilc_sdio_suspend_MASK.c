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
struct wilc {scalar_t__ suspend_event; int /*<<< orphan*/  rtc_clk; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct sdio_func* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 struct wilc* FUNC9 (struct sdio_func*) ; 
 int FUNC10 (struct wilc*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct sdio_func *func = FUNC6(dev);
	struct wilc *wilc = FUNC9(func);
	int ret;

	FUNC5(dev, "sdio suspend\n");
	FUNC2(wilc);

	if (!FUNC0(wilc->rtc_clk))
		FUNC3(wilc->rtc_clk);

	if (wilc->suspend_event) {
		FUNC7(wilc);
		FUNC1(wilc);
	}

	ret = FUNC10(wilc);
	if (ret) {
		FUNC4(&func->dev, "Fail reset sdio\n");
		return ret;
	}
	FUNC8(func);

	return 0;
}