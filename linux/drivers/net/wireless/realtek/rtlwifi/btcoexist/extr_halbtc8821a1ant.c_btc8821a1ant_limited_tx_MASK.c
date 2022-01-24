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
struct btc_coexist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,int,int) ; 

__attribute__((used)) static void FUNC4(struct btc_coexist *btcoexist,
				    bool force_exec, u8 ra_mask_type,
				    u8 arfr_type, u8 retry_limit_type,
				    u8 ampdu_time_type)
{
	switch (ra_mask_type) {
	case 0:	/* normal mode */
		FUNC3(btcoexist, force_exec, 0x0);
		break;
	case 1:	/* disable cck 1/2 */
		FUNC3(btcoexist, force_exec,
					    0x00000003);
		break;
	case 2:	/* disable cck 1/2/5.5, ofdm 6/9/12/18/24, mcs 0/1/2/3/4 */
		FUNC3(btcoexist, force_exec,
					    0x0001f1f7);
		break;
	default:
		break;
	}

	FUNC1(btcoexist, force_exec, arfr_type);
	FUNC2(btcoexist, force_exec, retry_limit_type);
	FUNC0(btcoexist, force_exec, ampdu_time_type);
}