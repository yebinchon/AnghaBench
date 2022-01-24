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
typedef  int /*<<< orphan*/  u32 ;
struct wlandevice {int /*<<< orphan*/  name; } ;
struct pda {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; void* status; int /*<<< orphan*/  len; int /*<<< orphan*/  did; } ;
struct TYPE_3__ {int len; scalar_t__ data; void* status; int /*<<< orphan*/  did; } ;
struct p80211msg_p2req_readpda {int msglen; TYPE_2__ pda; TYPE_1__ resultcode; int /*<<< orphan*/  devname; int /*<<< orphan*/  msgcode; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  DIDMSG_P2REQ_READPDA ; 
 int /*<<< orphan*/  DIDMSG_P2REQ_READPDA_PDA ; 
 int /*<<< orphan*/  DIDMSG_P2REQ_READPDA_RESULTCODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFA384x_PDA_LEN_MAX ; 
 void* P80211ENUM_msgitem_status_no_value ; 
 scalar_t__ P80211ENUM_resultcode_success ; 
 int /*<<< orphan*/  FUNC0 (struct p80211msg_p2req_readpda*) ; 
 struct p80211msg_p2req_readpda* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pda*) ; 
 scalar_t__ FUNC4 (struct wlandevice*,struct p80211msg_p2req_readpda*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pda *pda, struct wlandevice *wlandev)
{
	int result = 0;
	struct p80211msg_p2req_readpda *msg;

	msg = FUNC1(sizeof(*msg), GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	/* set up the msg */
	msg->msgcode = DIDMSG_P2REQ_READPDA;
	msg->msglen = sizeof(msg);
	FUNC5(msg->devname, wlandev->name);
	msg->pda.did = DIDMSG_P2REQ_READPDA_PDA;
	msg->pda.len = HFA384x_PDA_LEN_MAX;
	msg->pda.status = P80211ENUM_msgitem_status_no_value;
	msg->resultcode.did = DIDMSG_P2REQ_READPDA_RESULTCODE;
	msg->resultcode.len = sizeof(u32);
	msg->resultcode.status = P80211ENUM_msgitem_status_no_value;

	if (FUNC4(wlandev, msg) != 0) {
		/* prism2mgmt_readpda prints an errno if appropriate */
		result = -1;
	} else if (msg->resultcode.data == P80211ENUM_resultcode_success) {
		FUNC2(pda->buf, msg->pda.data, HFA384x_PDA_LEN_MAX);
		result = FUNC3(pda);
	} else {
		/* resultcode must've been something other than success */
		result = -1;
	}

	FUNC0(msg);
	return result;
}