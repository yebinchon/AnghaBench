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
struct esas2r_adapter {int dummy; } ;

/* Variables and functions */
 int DRBL_DRV_VER ; 
 int DRBL_FORCE_INT ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct esas2r_adapter *a)
{
	FUNC0(a, MU_DOORBELL_IN, DRBL_FORCE_INT |
				    DRBL_DRV_VER);
}