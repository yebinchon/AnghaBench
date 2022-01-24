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
typedef  int u8 ;
struct dvobj_priv {int* macid; int /*<<< orphan*/  lock; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int NUM_STA ; 
 struct dvobj_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u8 FUNC3(struct adapter *padapter)
{
	u8 max_mac_id = 0;
	struct dvobj_priv *pdvobj = FUNC0(padapter);
	int i;
	FUNC1(&pdvobj->lock);
	for (i = (NUM_STA-1); i >= 0 ; i--) {
		if (pdvobj->macid[i] == true)
			break;
	}
	max_mac_id = i;
	FUNC2(&pdvobj->lock);

	return max_mac_id;
}