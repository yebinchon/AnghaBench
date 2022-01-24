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
struct sas_rphy {scalar_t__ q; } ;
struct sas_expander_device {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sas_rphy* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sas_expander_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sas_expander_device* FUNC4 (struct sas_rphy*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct sas_rphy *rphy = FUNC1(dev);
	struct sas_expander_device *edev = FUNC4(rphy);

	if (rphy->q)
		FUNC0(rphy->q);

	FUNC3(dev->parent);
	FUNC2(edev);
}