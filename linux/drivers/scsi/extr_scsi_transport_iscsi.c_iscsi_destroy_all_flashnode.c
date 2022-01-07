
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int iscsi_iter_destroy_flashnode_fn ;

void iscsi_destroy_all_flashnode(struct Scsi_Host *shost)
{
 device_for_each_child(&shost->shost_gendev, ((void*)0),
         iscsi_iter_destroy_flashnode_fn);
}
