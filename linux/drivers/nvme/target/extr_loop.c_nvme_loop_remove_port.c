
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int entry; } ;


 int flush_workqueue (int ) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_delete_wq ;
 int nvme_loop_ports_mutex ;

__attribute__((used)) static void nvme_loop_remove_port(struct nvmet_port *port)
{
 mutex_lock(&nvme_loop_ports_mutex);
 list_del_init(&port->entry);
 mutex_unlock(&nvme_loop_ports_mutex);







 flush_workqueue(nvme_delete_wq);
}
