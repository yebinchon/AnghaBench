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
struct qcom_smd_channel {int remote_state; scalar_t__ state; int pkt_size; int /*<<< orphan*/  fblockread_event; int /*<<< orphan*/  state_change_event; } ;
typedef  int /*<<< orphan*/  pktlen ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_smd_channel*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qcom_smd_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_smd_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_smd_channel*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SMD_CHANNEL_OPENED ; 
 int SMD_PACKET_HEADER_LEN ; 
 int /*<<< orphan*/  fBLOCKREADINTR ; 
 int /*<<< orphan*/  fHEAD ; 
 int /*<<< orphan*/  fSTATE ; 
 int /*<<< orphan*/  fTAIL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_smd_channel*,int) ; 
 int FUNC6 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_smd_channel*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static bool FUNC12(struct qcom_smd_channel *channel)
{
	bool need_state_scan = false;
	int remote_state;
	__le32 pktlen;
	int avail;
	int ret;

	/* Handle state changes */
	remote_state = FUNC1(channel, state);
	if (remote_state != channel->remote_state) {
		channel->remote_state = remote_state;
		need_state_scan = true;

		FUNC10(&channel->state_change_event);
	}
	/* Indicate that we have seen any state change */
	FUNC3(channel, fSTATE, 0);

	/* Signal waiting qcom_smd_send() about the interrupt */
	if (!FUNC2(channel, fBLOCKREADINTR))
		FUNC10(&channel->fblockread_event);

	/* Don't consume any data until we've opened the channel */
	if (channel->state != SMD_CHANNEL_OPENED)
		goto out;

	/* Indicate that we've seen the new data */
	FUNC3(channel, fHEAD, 0);

	/* Consume data */
	for (;;) {
		avail = FUNC6(channel);

		if (!channel->pkt_size && avail >= SMD_PACKET_HEADER_LEN) {
			FUNC7(channel, &pktlen, sizeof(pktlen));
			FUNC5(channel, SMD_PACKET_HEADER_LEN);
			channel->pkt_size = FUNC4(pktlen);
		} else if (channel->pkt_size && avail >= channel->pkt_size) {
			ret = FUNC8(channel);
			if (ret)
				break;
		} else {
			break;
		}
	}

	/* Indicate that we have seen and updated tail */
	FUNC3(channel, fTAIL, 1);

	/* Signal the remote that we've consumed the data (if requested) */
	if (!FUNC0(channel, fBLOCKREADINTR)) {
		/* Ensure ordering of channel info updates */
		FUNC11();

		FUNC9(channel);
	}

out:
	return need_state_scan;
}