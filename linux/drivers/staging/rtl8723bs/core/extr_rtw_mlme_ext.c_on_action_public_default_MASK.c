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
struct TYPE_3__ {int* rx_data; struct adapter* adapter; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  uint ;
typedef  int u8 ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 unsigned int _FAIL ; 
 unsigned int _SUCCESS ; 
 char* FUNC0 (int) ; 
 unsigned int FUNC1 (union recv_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,char*,char*,int) ; 

__attribute__((used)) static unsigned int FUNC4(union recv_frame *precv_frame, u8 action)
{
	unsigned int ret = _FAIL;
	u8 *pframe = precv_frame->u.hdr.rx_data;
	uint frame_len = precv_frame->u.hdr.len;
	u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);
	u8 token;
	struct adapter *adapter = precv_frame->u.hdr.adapter;
	int cnt = 0;
	char msg[64];

	token = frame_body[2];

	if (FUNC1(precv_frame, token) == _FAIL)
		goto exit;

	cnt += FUNC3((msg+cnt), "%s(token:%u)", FUNC0(action), token);
	FUNC2(adapter, pframe, frame_len, msg);

	ret = _SUCCESS;

exit:
	return ret;
}