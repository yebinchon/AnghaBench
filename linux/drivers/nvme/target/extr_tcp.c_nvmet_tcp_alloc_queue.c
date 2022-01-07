
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct nvmet_tcp_queue {int idx; int connect; int nvme_sq; int queue_list; int io_work; int cpu; int resp_send_list; int resp_list; int free_list; int state; int state_lock; scalar_t__ nr_cmds; struct nvmet_tcp_port* port; struct socket* sock; int release_work; } ;
struct nvmet_tcp_port {int last_cpu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NVMET_TCP_Q_CONNECTING ;
 int cpu_online_mask ;
 int cpumask_next_wrap (int ,int ,int,int) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_llist_head (int *) ;
 int kfree (struct nvmet_tcp_queue*) ;
 struct nvmet_tcp_queue* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_prepare_receive_pdu (struct nvmet_tcp_queue*) ;
 int nvmet_sq_destroy (int *) ;
 int nvmet_sq_init (int *) ;
 int nvmet_tcp_alloc_cmd (struct nvmet_tcp_queue*,int *) ;
 int nvmet_tcp_free_cmd (int *) ;
 int nvmet_tcp_io_work ;
 int nvmet_tcp_queue_ida ;
 int nvmet_tcp_queue_list ;
 int nvmet_tcp_queue_mutex ;
 int nvmet_tcp_release_queue_work ;
 int nvmet_tcp_set_queue_sock (struct nvmet_tcp_queue*) ;
 int nvmet_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nvmet_tcp_alloc_queue(struct nvmet_tcp_port *port,
  struct socket *newsock)
{
 struct nvmet_tcp_queue *queue;
 int ret;

 queue = kzalloc(sizeof(*queue), GFP_KERNEL);
 if (!queue)
  return -ENOMEM;

 INIT_WORK(&queue->release_work, nvmet_tcp_release_queue_work);
 INIT_WORK(&queue->io_work, nvmet_tcp_io_work);
 queue->sock = newsock;
 queue->port = port;
 queue->nr_cmds = 0;
 spin_lock_init(&queue->state_lock);
 queue->state = NVMET_TCP_Q_CONNECTING;
 INIT_LIST_HEAD(&queue->free_list);
 init_llist_head(&queue->resp_list);
 INIT_LIST_HEAD(&queue->resp_send_list);

 queue->idx = ida_simple_get(&nvmet_tcp_queue_ida, 0, 0, GFP_KERNEL);
 if (queue->idx < 0) {
  ret = queue->idx;
  goto out_free_queue;
 }

 ret = nvmet_tcp_alloc_cmd(queue, &queue->connect);
 if (ret)
  goto out_ida_remove;

 ret = nvmet_sq_init(&queue->nvme_sq);
 if (ret)
  goto out_free_connect;

 port->last_cpu = cpumask_next_wrap(port->last_cpu,
    cpu_online_mask, -1, 0);
 queue->cpu = port->last_cpu;
 nvmet_prepare_receive_pdu(queue);

 mutex_lock(&nvmet_tcp_queue_mutex);
 list_add_tail(&queue->queue_list, &nvmet_tcp_queue_list);
 mutex_unlock(&nvmet_tcp_queue_mutex);

 ret = nvmet_tcp_set_queue_sock(queue);
 if (ret)
  goto out_destroy_sq;

 queue_work_on(queue->cpu, nvmet_tcp_wq, &queue->io_work);

 return 0;
out_destroy_sq:
 mutex_lock(&nvmet_tcp_queue_mutex);
 list_del_init(&queue->queue_list);
 mutex_unlock(&nvmet_tcp_queue_mutex);
 nvmet_sq_destroy(&queue->nvme_sq);
out_free_connect:
 nvmet_tcp_free_cmd(&queue->connect);
out_ida_remove:
 ida_simple_remove(&nvmet_tcp_queue_ida, queue->idx);
out_free_queue:
 kfree(queue);
 return ret;
}
