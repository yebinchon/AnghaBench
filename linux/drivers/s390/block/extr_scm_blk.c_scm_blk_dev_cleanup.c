
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scm_blk_dev {TYPE_1__* gendisk; int tag_set; } ;
struct TYPE_3__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (TYPE_1__*) ;
 int put_disk (TYPE_1__*) ;

void scm_blk_dev_cleanup(struct scm_blk_dev *bdev)
{
 del_gendisk(bdev->gendisk);
 blk_cleanup_queue(bdev->gendisk->queue);
 blk_mq_free_tag_set(&bdev->tag_set);
 put_disk(bdev->gendisk);
}
