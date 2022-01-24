#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct wl1271_command {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct wl1271_cmd_cal_p2g {TYPE_1__ test; int /*<<< orphan*/  radio_status; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_2__* hw; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int s16 ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TESTMODE ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ TEST_CMD_P2G_CAL ; 
 size_t WL1271_TM_ATTR_ANSWER ; 
 size_t WL1271_TM_ATTR_DATA ; 
 scalar_t__ WLCORE_STATE_ON ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,size_t,int,void*) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (struct wl1271*,void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 

__attribute__((used)) static int FUNC20(struct wl1271 *wl, struct nlattr *tb[])
{
	int buf_len, ret, len;
	struct sk_buff *skb;
	void *buf;
	u8 answer = 0;

	FUNC17(DEBUG_TESTMODE, "testmode cmd test");

	if (!tb[WL1271_TM_ATTR_DATA])
		return -EINVAL;

	buf = FUNC6(tb[WL1271_TM_ATTR_DATA]);
	buf_len = FUNC8(tb[WL1271_TM_ATTR_DATA]);

	if (tb[WL1271_TM_ATTR_ANSWER])
		answer = FUNC7(tb[WL1271_TM_ATTR_ANSWER]);

	if (buf_len > sizeof(struct wl1271_command))
		return -EMSGSIZE;

	FUNC4(&wl->mutex);

	if (FUNC15(wl->state != WLCORE_STATE_ON)) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC11(wl->dev);
	if (ret < 0) {
		FUNC14(wl->dev);
		goto out;
	}

	ret = FUNC16(wl, buf, buf_len, answer);
	if (ret < 0) {
		FUNC19("testmode cmd test failed: %d", ret);
		goto out_sleep;
	}

	if (answer) {
		/* If we got bip calibration answer print radio status */
		struct wl1271_cmd_cal_p2g *params =
			(struct wl1271_cmd_cal_p2g *) buf;

		s16 radio_status = (s16) FUNC3(params->radio_status);

		if (params->test.id == TEST_CMD_P2G_CAL &&
		    radio_status < 0)
			FUNC19("testmode cmd: radio status=%d",
					radio_status);
		else
			FUNC18("testmode cmd: radio status=%d",
					radio_status);

		len = FUNC10(buf_len);
		skb = FUNC0(wl->hw->wiphy, len);
		if (!skb) {
			ret = -ENOMEM;
			goto out_sleep;
		}

		if (FUNC9(skb, WL1271_TM_ATTR_DATA, buf_len, buf)) {
			FUNC2(skb);
			ret = -EMSGSIZE;
			goto out_sleep;
		}

		ret = FUNC1(skb);
		if (ret < 0)
			goto out_sleep;
	}

out_sleep:
	FUNC12(wl->dev);
	FUNC13(wl->dev);
out:
	FUNC5(&wl->mutex);

	return ret;
}