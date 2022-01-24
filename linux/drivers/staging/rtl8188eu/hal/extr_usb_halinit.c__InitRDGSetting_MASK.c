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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RD_CTRL ; 
 int /*<<< orphan*/  REG_RD_NAV_NXT ; 
 int /*<<< orphan*/  REG_RD_RESP_PKT_TH ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *Adapter)
{
	FUNC1(Adapter, REG_RD_CTRL, 0xFF);
	FUNC0(Adapter, REG_RD_NAV_NXT, 0x200);
	FUNC1(Adapter, REG_RD_RESP_PKT_TH, 0x05);
}