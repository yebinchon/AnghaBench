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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u8 ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6(struct adapter *adapter, u8 *frame, uint frame_len, const char*msg)
{
	s32 freq;
	int channel;
	u8 category, action;

	channel = FUNC4(adapter);

	FUNC2(frame, frame_len, &category, &action);

	FUNC0("RTW_Rx:cur_ch =%d\n", channel);
	if (msg)
		FUNC1("RTW_Rx:%s\n", msg);
	else
		FUNC1("RTW_Rx:category(%u), action(%u)\n", category, action);

	freq = FUNC5(channel, NL80211_BAND_2GHZ);

	FUNC3(adapter, freq, 0, frame, frame_len, GFP_ATOMIC);
}