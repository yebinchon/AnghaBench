#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct btc_coexist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cur_ss_type; int /*<<< orphan*/  cur_ra_mask_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btc_coexist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,int,int) ; 
 TYPE_1__* coex_dm ; 

__attribute__((used)) static void FUNC5(struct btc_coexist *btcoexist,
				    bool force_exec, u8 ra_mask_type,
				    u8 arfr_type, u8 retry_limit_type,
				    u8 ampdu_time_type)
{
	u32 dis_ra_mask = 0x0;

	coex_dm->cur_ra_mask_type = ra_mask_type;
	dis_ra_mask =
		 FUNC2(btcoexist, coex_dm->cur_ss_type,
					     ra_mask_type);
	FUNC4(btcoexist, force_exec, dis_ra_mask);
	FUNC1(btcoexist, force_exec, arfr_type);
	FUNC3(btcoexist, force_exec, retry_limit_type);
	FUNC0(btcoexist, force_exec, ampdu_time_type);
}