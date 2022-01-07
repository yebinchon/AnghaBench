
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {TYPE_1__* opts; } ;
struct TYPE_2__ {int nr_poll_queues; int nr_write_queues; int nr_io_queues; } ;


 unsigned int min (int ,int ) ;
 int num_online_cpus () ;

__attribute__((used)) static unsigned int nvme_tcp_nr_io_queues(struct nvme_ctrl *ctrl)
{
 unsigned int nr_io_queues;

 nr_io_queues = min(ctrl->opts->nr_io_queues, num_online_cpus());
 nr_io_queues += min(ctrl->opts->nr_write_queues, num_online_cpus());
 nr_io_queues += min(ctrl->opts->nr_poll_queues, num_online_cpus());

 return nr_io_queues;
}
