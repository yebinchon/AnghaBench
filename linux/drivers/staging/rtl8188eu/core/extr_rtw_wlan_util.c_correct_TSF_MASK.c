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
struct mlme_ext_priv {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_CORRECT_TSF ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct adapter *padapter, struct mlme_ext_priv *pmlmeext)
{
	FUNC0(padapter, HW_VAR_CORRECT_TSF, NULL);
}