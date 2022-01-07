
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int device_for_each_child (int *,void (*) (struct iscsi_cls_session*),int ) ;
 int iscsi_iter_session_fn ;

void iscsi_host_for_each_session(struct Scsi_Host *shost,
     void (*fn)(struct iscsi_cls_session *))
{
 device_for_each_child(&shost->shost_gendev, fn,
         iscsi_iter_session_fn);
}
