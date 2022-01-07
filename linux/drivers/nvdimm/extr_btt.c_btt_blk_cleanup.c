
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btt {int btt_queue; int btt_disk; } ;


 int blk_cleanup_queue (int ) ;
 int del_gendisk (int ) ;
 int put_disk (int ) ;

__attribute__((used)) static void btt_blk_cleanup(struct btt *btt)
{
 del_gendisk(btt->btt_disk);
 put_disk(btt->btt_disk);
 blk_cleanup_queue(btt->btt_queue);
}
