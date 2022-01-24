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
struct qcom_smd_channel {int /*<<< orphan*/ * bounce_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMD_CHANNEL_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_smd_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_smd_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_smd_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qcom_smd_channel *channel)
{
	FUNC2(channel, NULL);

	FUNC0(channel->bounce_buffer);
	channel->bounce_buffer = NULL;

	FUNC3(channel, SMD_CHANNEL_CLOSED);
	FUNC1(channel);
}