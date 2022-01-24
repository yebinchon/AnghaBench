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
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO_HIMR_DISABLED ; 
 int /*<<< orphan*/  SDIO_REG_HIMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct adapter *adapter)
{
	__le32 himr;

	himr = FUNC0(SDIO_HIMR_DISABLED);
	FUNC1(adapter, SDIO_REG_HIMR, 4, (u8 *)&himr);
}