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
struct work_struct {int dummy; } ;
struct asd_sas_phy {scalar_t__ error; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asd_sas_phy*,int) ; 
 struct asd_sas_event* FUNC1 (struct work_struct*) ; 

__attribute__((used)) static void FUNC2(struct work_struct *work)
{
	struct asd_sas_event *ev = FUNC1(work);
	struct asd_sas_phy *phy = ev->phy;

	phy->error = 0;
	FUNC0(phy, 1);
}