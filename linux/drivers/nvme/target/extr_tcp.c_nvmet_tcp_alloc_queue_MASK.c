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
struct socket {int dummy; } ;
struct nvmet_tcp_queue {int idx; int /*<<< orphan*/  connect; int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  io_work; int /*<<< orphan*/  cpu; int /*<<< orphan*/  resp_send_list; int /*<<< orphan*/  resp_list; int /*<<< orphan*/  free_list; int /*<<< orphan*/  state; int /*<<< orphan*/  state_lock; scalar_t__ nr_cmds; struct nvmet_tcp_port* port; struct socket* sock; int /*<<< orphan*/  release_work; } ;
struct nvmet_tcp_port {int /*<<< orphan*/  last_cpu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVMET_TCP_Q_CONNECTING ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvmet_tcp_queue*) ; 
 struct nvmet_tcp_queue* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct nvmet_tcp_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_tcp_io_work ; 
 int /*<<< orphan*/  nvmet_tcp_queue_ida ; 
 int /*<<< orphan*/  nvmet_tcp_queue_list ; 
 int /*<<< orphan*/  nvmet_tcp_queue_mutex ; 
 int /*<<< orphan*/  nvmet_tcp_release_queue_work ; 
 int FUNC17 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  nvmet_tcp_wq ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct nvmet_tcp_port *port,
		struct socket *newsock)
{
	struct nvmet_tcp_queue *queue;
	int ret;

	queue = FUNC7(sizeof(*queue), GFP_KERNEL);
	if (!queue)
		return -ENOMEM;

	FUNC1(&queue->release_work, nvmet_tcp_release_queue_work);
	FUNC1(&queue->io_work, nvmet_tcp_io_work);
	queue->sock = newsock;
	queue->port = port;
	queue->nr_cmds = 0;
	FUNC19(&queue->state_lock);
	queue->state = NVMET_TCP_Q_CONNECTING;
	FUNC0(&queue->free_list);
	FUNC5(&queue->resp_list);
	FUNC0(&queue->resp_send_list);

	queue->idx = FUNC3(&nvmet_tcp_queue_ida, 0, 0, GFP_KERNEL);
	if (queue->idx < 0) {
		ret = queue->idx;
		goto out_free_queue;
	}

	ret = FUNC15(queue, &queue->connect);
	if (ret)
		goto out_ida_remove;

	ret = FUNC14(&queue->nvme_sq);
	if (ret)
		goto out_free_connect;

	port->last_cpu = FUNC2(port->last_cpu,
				cpu_online_mask, -1, false);
	queue->cpu = port->last_cpu;
	FUNC12(queue);

	FUNC10(&nvmet_tcp_queue_mutex);
	FUNC8(&queue->queue_list, &nvmet_tcp_queue_list);
	FUNC11(&nvmet_tcp_queue_mutex);

	ret = FUNC17(queue);
	if (ret)
		goto out_destroy_sq;

	FUNC18(queue->cpu, nvmet_tcp_wq, &queue->io_work);

	return 0;
out_destroy_sq:
	FUNC10(&nvmet_tcp_queue_mutex);
	FUNC9(&queue->queue_list);
	FUNC11(&nvmet_tcp_queue_mutex);
	FUNC13(&queue->nvme_sq);
out_free_connect:
	FUNC16(&queue->connect);
out_ida_remove:
	FUNC4(&nvmet_tcp_queue_ida, queue->idx);
out_free_queue:
	FUNC6(queue);
	return ret;
}