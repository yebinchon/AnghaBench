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
struct seq_file {int dummy; } ;
struct btc_coexist {int dummy; } ;

/* Variables and functions */
#define  BTC_DBG_DISP_BT_LINK_INFO 130 
#define  BTC_DBG_DISP_COEX_STATISTICS 129 
#define  BTC_DBG_DISP_WIFI_STATUS 128 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*,struct seq_file*) ; 

__attribute__((used)) static void FUNC3(void *bt_context, u8 disp_type,
				   struct seq_file *m)
{
	struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;

	switch (disp_type) {
	case BTC_DBG_DISP_COEX_STATISTICS:
		FUNC1(btcoexist, m);
		break;
	case BTC_DBG_DISP_BT_LINK_INFO:
		FUNC0(btcoexist, m);
		break;
	case BTC_DBG_DISP_WIFI_STATUS:
		FUNC2(btcoexist, m);
		break;
	default:
		break;
	}
}