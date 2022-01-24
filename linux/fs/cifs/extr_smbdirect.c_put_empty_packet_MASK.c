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
struct smbd_response {int /*<<< orphan*/  list; } ;
struct smbd_connection {int /*<<< orphan*/  post_send_credits_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  empty_packet_queue_lock; int /*<<< orphan*/  count_empty_packet_queue; int /*<<< orphan*/  empty_packet_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
		struct smbd_connection *info, struct smbd_response *response)
{
	FUNC2(&info->empty_packet_queue_lock);
	FUNC0(&response->list, &info->empty_packet_queue);
	info->count_empty_packet_queue++;
	FUNC3(&info->empty_packet_queue_lock);

	FUNC1(info->workqueue, &info->post_send_credits_work);
}