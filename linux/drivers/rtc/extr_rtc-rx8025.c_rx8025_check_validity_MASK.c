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
struct rx8025_data {int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RX8025_BIT_CTRL2_PON ; 
 int RX8025_BIT_CTRL2_VDET ; 
 int RX8025_BIT_CTRL2_XST ; 
 int /*<<< orphan*/  RX8025_REG_CTRL2 ; 
 struct rx8025_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct rx8025_data *rx8025 = FUNC0(dev);
	int ctrl2;

	ctrl2 = FUNC2(rx8025->client, RX8025_REG_CTRL2);
	if (ctrl2 < 0)
		return ctrl2;

	if (ctrl2 & RX8025_BIT_CTRL2_VDET)
		FUNC1(dev, "power voltage drop detected\n");

	if (ctrl2 & RX8025_BIT_CTRL2_PON) {
		FUNC1(dev, "power-on reset detected, date is invalid\n");
		return -EINVAL;
	}

	if (!(ctrl2 & RX8025_BIT_CTRL2_XST)) {
		FUNC1(dev, "crystal stopped, date is invalid\n");
		return -EINVAL;
	}

	return 0;
}