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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct rtw_dev*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rtw_dev*,struct ieee80211_vif*) ; 
 int FUNC3 (struct rtw_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,char*) ; 

int FUNC5(struct rtw_dev *rtwdev, struct ieee80211_vif *vif)
{
	u8 *buf;
	u32 size;
	int ret;

	buf = FUNC1(rtwdev, vif, &size);
	if (!buf) {
		FUNC4(rtwdev, "failed to build rsvd page pkt\n");
		return -ENOMEM;
	}

	ret = FUNC3(rtwdev, buf, size);
	if (ret) {
		FUNC4(rtwdev, "failed to download drv rsvd page\n");
		goto free;
	}

	ret = FUNC2(rtwdev, vif);
	if (ret) {
		FUNC4(rtwdev, "failed to download beacon\n");
		goto free;
	}

free:
	FUNC0(buf);

	return ret;
}