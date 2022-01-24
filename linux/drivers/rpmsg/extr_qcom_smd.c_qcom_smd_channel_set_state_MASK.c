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
struct qcom_smd_edge {int /*<<< orphan*/  dev; } ;
struct qcom_smd_channel {int state; int /*<<< orphan*/  name; struct qcom_smd_edge* edge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_smd_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_smd_channel*,int,int) ; 
 int SMD_CHANNEL_OPENED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fCD ; 
 int /*<<< orphan*/  fCTS ; 
 int /*<<< orphan*/  fDSR ; 
 int /*<<< orphan*/  fSTATE ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_smd_channel*) ; 

__attribute__((used)) static void FUNC4(struct qcom_smd_channel *channel,
				       int state)
{
	struct qcom_smd_edge *edge = channel->edge;
	bool is_open = state == SMD_CHANNEL_OPENED;

	if (channel->state == state)
		return;

	FUNC2(&edge->dev, "set_state(%s, %d)\n", channel->name, state);

	FUNC0(channel, fDSR, is_open);
	FUNC0(channel, fCTS, is_open);
	FUNC0(channel, fCD, is_open);

	FUNC1(channel, state, state);
	FUNC0(channel, fSTATE, 1);

	channel->state = state;
	FUNC3(channel);
}