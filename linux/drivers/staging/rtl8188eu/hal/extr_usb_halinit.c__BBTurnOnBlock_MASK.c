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
 int /*<<< orphan*/  bCCKEn ; 
 int /*<<< orphan*/  bOFDMEn ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 

__attribute__((used)) static void FUNC1(struct adapter *Adapter)
{
	FUNC0(Adapter, rFPGA0_RFMOD, bCCKEn, 0x1);
	FUNC0(Adapter, rFPGA0_RFMOD, bOFDMEn, 0x1);
}