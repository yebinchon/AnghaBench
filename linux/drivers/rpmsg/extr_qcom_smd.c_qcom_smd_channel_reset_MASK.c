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
struct qcom_smd_channel {scalar_t__ pkt_size; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_smd_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_smd_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_smd_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMD_CHANNEL_CLOSED ; 
 int /*<<< orphan*/  fBLOCKREADINTR ; 
 int /*<<< orphan*/  fCD ; 
 int /*<<< orphan*/  fCTS ; 
 int /*<<< orphan*/  fDSR ; 
 int /*<<< orphan*/  fHEAD ; 
 int /*<<< orphan*/  fRI ; 
 int /*<<< orphan*/  fSTATE ; 
 int /*<<< orphan*/  fTAIL ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  tail ; 

__attribute__((used)) static void FUNC4(struct qcom_smd_channel *channel)
{
	FUNC2(channel, state, SMD_CHANNEL_CLOSED);
	FUNC1(channel, fDSR, 0);
	FUNC1(channel, fCTS, 0);
	FUNC1(channel, fCD, 0);
	FUNC1(channel, fRI, 0);
	FUNC1(channel, fHEAD, 0);
	FUNC1(channel, fTAIL, 0);
	FUNC1(channel, fSTATE, 1);
	FUNC1(channel, fBLOCKREADINTR, 1);
	FUNC2(channel, head, 0);
	FUNC0(channel, tail, 0);

	FUNC3(channel);

	channel->state = SMD_CHANNEL_CLOSED;
	channel->pkt_size = 0;
}