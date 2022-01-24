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
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy*) ; 
 struct phy* FUNC3 (struct device*,struct device_node*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct phy *FUNC6(struct device *dev,
						  struct device_node *np,
						  const char *consumer,
						  unsigned int index)
{
	struct phy *phy;
	char *name;

	name = FUNC4(GFP_KERNEL, "%s-%u", consumer, index);
	if (!name)
		return FUNC0(-ENOMEM);

	phy = FUNC3(dev, np, name);
	FUNC5(name);

	if (FUNC1(phy) && FUNC2(phy) == -ENODEV)
		phy = NULL;

	return phy;
}