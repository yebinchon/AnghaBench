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
struct wlandevice {int dummy; } ;
struct p80211pstrd {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int /*<<< orphan*/  parm2; int /*<<< orphan*/  parm1; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int MIB_TMP_MAXLEN ; 
 int FUNC0 (struct hfa384x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfa384x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p80211pstrd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mibrec *mib,
				   int isget,
				   struct wlandevice *wlandev,
				   struct hfa384x *hw,
				   struct p80211msg_dot11req_mibset *msg,
				   void *data)
{
	int result;
	struct p80211pstrd *pstr = data;
	u8 bytebuf[MIB_TMP_MAXLEN];

	if (isget) {
		result =
		    FUNC0(hw, mib->parm1, bytebuf, mib->parm2);
		FUNC4(bytebuf, pstr, mib->parm2);
	} else {
		FUNC3(bytebuf, 0, mib->parm2);
		FUNC2(bytebuf, pstr->data, pstr->len);
		result =
		    FUNC1(hw, mib->parm1, bytebuf, mib->parm2);
	}

	return result;
}