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
struct dm_priv {int dummy; } ;
struct hal_com_data {struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct adapter *Adapter)
{
	struct hal_com_data *pHalData = FUNC0(Adapter);
	struct dm_priv *pdmpriv = &pHalData->dmpriv;

	FUNC2(pdmpriv, 0, sizeof(struct dm_priv));
	FUNC1(Adapter);
}