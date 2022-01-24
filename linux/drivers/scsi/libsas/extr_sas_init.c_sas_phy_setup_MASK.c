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
struct sas_phy_data {struct sas_phy* phy; int /*<<< orphan*/  enable_work; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  event_lock; } ;
struct sas_phy {struct sas_phy_data* hostdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sas_phy_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phy_enable_work ; 
 int /*<<< orphan*/  phy_reset_work ; 

__attribute__((used)) static int FUNC3(struct sas_phy *phy)
{
	struct sas_phy_data *d = FUNC1(sizeof(*d), GFP_KERNEL);

	if (!d)
		return -ENOMEM;

	FUNC2(&d->event_lock);
	FUNC0(&d->reset_work, phy_reset_work);
	FUNC0(&d->enable_work, phy_enable_work);
	d->phy = phy;
	phy->hostdata = d;

	return 0;
}