
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int entry; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_loop_ports ;
 int nvme_loop_ports_mutex ;

__attribute__((used)) static int nvme_loop_add_port(struct nvmet_port *port)
{
 mutex_lock(&nvme_loop_ports_mutex);
 list_add_tail(&port->entry, &nvme_loop_ports);
 mutex_unlock(&nvme_loop_ports_mutex);
 return 0;
}
