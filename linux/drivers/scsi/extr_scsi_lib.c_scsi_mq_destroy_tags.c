
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int tag_set; } ;


 int blk_mq_free_tag_set (int *) ;

void scsi_mq_destroy_tags(struct Scsi_Host *shost)
{
 blk_mq_free_tag_set(&shost->tag_set);
}
