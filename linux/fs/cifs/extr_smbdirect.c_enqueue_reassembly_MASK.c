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
struct smbd_connection {int reassembly_data_length; int /*<<< orphan*/  count_enqueue_reassembly_queue; int /*<<< orphan*/  count_reassembly_queue; int /*<<< orphan*/  reassembly_queue_lock; int /*<<< orphan*/  reassembly_queue_length; int /*<<< orphan*/  reassembly_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(
	struct smbd_connection *info,
	struct smbd_response *response,
	int data_length)
{
	FUNC1(&info->reassembly_queue_lock);
	FUNC0(&response->list, &info->reassembly_queue);
	info->reassembly_queue_length++;
	/*
	 * Make sure reassembly_data_length is updated after list and
	 * reassembly_queue_length are updated. On the dequeue side
	 * reassembly_data_length is checked without a lock to determine
	 * if reassembly_queue_length and list is up to date
	 */
	FUNC3();
	info->reassembly_data_length += data_length;
	FUNC2(&info->reassembly_queue_lock);
	info->count_reassembly_queue++;
	info->count_enqueue_reassembly_queue++;
}