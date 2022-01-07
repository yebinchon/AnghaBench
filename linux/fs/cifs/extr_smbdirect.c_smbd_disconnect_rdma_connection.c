
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int disconnect_work; int workqueue; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void smbd_disconnect_rdma_connection(struct smbd_connection *info)
{
 queue_work(info->workqueue, &info->disconnect_work);
}
