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
typedef  int u8 ;
struct btc_coexist {int dummy; } ;
struct TYPE_2__ {int coex_table_type; int scan_ap_num; int /*<<< orphan*/  cck_ever_lock; } ;

/* Variables and functions */
 TYPE_1__* coex_sta ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct btc_coexist *btcoexist,
						 bool force_exec, u8 type)
{
	coex_sta->coex_table_type = type;

	switch (type) {
	case 0:
		FUNC0(btcoexist, force_exec, 0x55555555,
					   0x55555555, 0xffffff, 0x3);
		break;
	case 1:
		FUNC0(btcoexist, force_exec, 0x55555555,
					   0x5a5a5a5a, 0xffffff, 0x3);
		break;
	case 2:
		FUNC0(btcoexist, force_exec, 0x5a5a5a5a,
					   0x5a5a5a5a, 0xffffff, 0x3);
		break;
	case 3:
		FUNC0(btcoexist, force_exec, 0x55555555,
					   0x5a5a5a5a, 0xffffff, 0x3);
		break;
	case 4:
		if ((coex_sta->cck_ever_lock) && (coex_sta->scan_ap_num <= 5))
			FUNC0(btcoexist, force_exec,
						   0x55555555, 0xaaaa5a5a,
						   0xffffff, 0x3);
		else
			FUNC0(btcoexist, force_exec,
						   0x55555555, 0x5a5a5a5a,
						   0xffffff, 0x3);
		break;
	case 5:
		FUNC0(btcoexist, force_exec, 0x5a5a5a5a,
					   0x5aaa5a5a, 0xffffff, 0x3);
		break;
	case 6:
		FUNC0(btcoexist, force_exec, 0x55555555,
					   0xaaaaaaaa, 0xffffff, 0x3);
		break;
	case 7:
		FUNC0(btcoexist, force_exec, 0xaaaaaaaa,
					   0xaaaaaaaa, 0xffffff, 0x3);
		break;
	case 8:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 9:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 10:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 11:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 12:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 13:
		FUNC0(btcoexist, force_exec, 0x5fff5fff,
					   0xaaaaaaaa, 0xffffff, 0x3);
		break;
	case 14:
		FUNC0(btcoexist, force_exec, 0x5fff5fff,
					   0x5ada5ada, 0xffffff, 0x3);
		break;
	case 15:
		FUNC0(btcoexist, force_exec, 0x55dd55dd,
					   0xaaaaaaaa, 0xffffff, 0x3);
		break;
	default:
		break;
	}
}