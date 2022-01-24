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
struct nvmf_ctrl_options {unsigned int nr_write_queues; unsigned int nr_io_queues; unsigned int nr_poll_queues; } ;
struct nvme_tcp_ctrl {unsigned int* io_queues; } ;
struct nvme_ctrl {struct nvmf_ctrl_options* opts; } ;

/* Variables and functions */
 size_t HCTX_TYPE_DEFAULT ; 
 size_t HCTX_TYPE_POLL ; 
 size_t HCTX_TYPE_READ ; 
 void* FUNC0 (unsigned int,unsigned int) ; 
 struct nvme_tcp_ctrl* FUNC1 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC2(struct nvme_ctrl *nctrl,
		unsigned int nr_io_queues)
{
	struct nvme_tcp_ctrl *ctrl = FUNC1(nctrl);
	struct nvmf_ctrl_options *opts = nctrl->opts;

	if (opts->nr_write_queues && opts->nr_io_queues < nr_io_queues) {
		/*
		 * separate read/write queues
		 * hand out dedicated default queues only after we have
		 * sufficient read queues.
		 */
		ctrl->io_queues[HCTX_TYPE_READ] = opts->nr_io_queues;
		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_READ];
		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
			FUNC0(opts->nr_write_queues, nr_io_queues);
		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
	} else {
		/*
		 * shared read/write queues
		 * either no write queues were requested, or we don't have
		 * sufficient queue count to have dedicated default queues.
		 */
		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
			FUNC0(opts->nr_io_queues, nr_io_queues);
		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
	}

	if (opts->nr_poll_queues && nr_io_queues) {
		/* map dedicated poll queues only if we have queues left */
		ctrl->io_queues[HCTX_TYPE_POLL] =
			FUNC0(opts->nr_poll_queues, nr_io_queues);
	}
}