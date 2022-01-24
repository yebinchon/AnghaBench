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
struct phy {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy*) ; 
 struct phy* FUNC2 (struct device*,char const*) ; 

struct phy *FUNC3(struct device *dev, const char *string)
{
	struct phy *phy = FUNC2(dev, string);

	if (FUNC0(phy) && (FUNC1(phy) == -ENODEV))
		phy = NULL;

	return phy;
}