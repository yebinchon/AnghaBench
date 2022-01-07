
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_gendisk (void*) ;
 int put_disk (void*) ;

__attribute__((used)) static void nd_blk_release_disk(void *disk)
{
 del_gendisk(disk);
 put_disk(disk);
}
