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
struct odm_dm_struct {int SupportAbility; } ;

/* Variables and functions */
 int ODM_BB_ANT_DIV ; 
 int /*<<< orphan*/  ODM_COMP_ANT_DIV ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct odm_dm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct odm_dm_struct*) ; 

void FUNC2(struct odm_dm_struct *pDM_Odm)
{
	if (!(pDM_Odm->SupportAbility & ODM_BB_ANT_DIV)) {
		FUNC0(pDM_Odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD, ("Return: Not Support HW AntDiv\n"));
		return;
	}

	FUNC1(pDM_Odm);
}