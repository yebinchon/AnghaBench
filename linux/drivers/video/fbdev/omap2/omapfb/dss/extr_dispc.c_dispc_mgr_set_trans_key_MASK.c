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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum omap_dss_trans_key_type { ____Placeholder_omap_dss_trans_key_type } omap_dss_trans_key_type ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_MGR_FLD_TCKSELECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(enum omap_channel ch,
		enum omap_dss_trans_key_type type,
		u32 trans_key)
{
	FUNC2(ch, DISPC_MGR_FLD_TCKSELECTION, type);

	FUNC1(FUNC0(ch), trans_key);
}