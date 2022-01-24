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
struct smbd_connection {scalar_t__ transport_status; int send_immediate; int receive_credit_target; int /*<<< orphan*/  send_immediate_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  receive_credits; } ;

/* Variables and functions */
 scalar_t__ SMBD_CONNECTED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct smbd_connection *info)
{
	if (info->transport_status != SMBD_CONNECTED)
		return;

	info->send_immediate = true;

	/*
	 * Promptly send a packet if our peer is running low on receive
	 * credits
	 */
	if (FUNC0(&info->receive_credits) <
		info->receive_credit_target - 1)
		FUNC1(
			info->workqueue, &info->send_immediate_work, 0);
}