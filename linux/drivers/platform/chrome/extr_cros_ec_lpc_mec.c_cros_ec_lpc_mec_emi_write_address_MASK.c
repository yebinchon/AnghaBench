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
typedef  int u16 ;
typedef  enum cros_ec_lpc_mec_emi_access_mode { ____Placeholder_cros_ec_lpc_mec_emi_access_mode } cros_ec_lpc_mec_emi_access_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mec_emi_base ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u16 addr,
			enum cros_ec_lpc_mec_emi_access_mode access_type)
{
	FUNC2((addr & 0xfc) | access_type, FUNC0(mec_emi_base));
	FUNC2((addr >> 8) & 0x7f, FUNC1(mec_emi_base));
}